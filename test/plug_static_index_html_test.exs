defmodule PlugStaticIndexHtmlTest do
  use ExUnit.Case
  alias Plug.Conn
  alias Plug.Static.IndexHtml
  doctest IndexHtml

  test "Transforms request path for directory" do
    opts = IndexHtml.init(at: "/doc")
    conn = %Conn{
      request_path: "/doc/about/",
      path_info: ["doc", "about"]
    }

    result = IndexHtml.call(conn, opts)

    assert result.request_path == "/doc/about/index.html"
    assert result.path_info == ["doc", "about", "index.html"]
  end

  test "Uses the supplied default filename" do
    opts = IndexHtml.init(at: "/doc", default_file: "index.md")
    conn = %Conn{
      request_path: "/doc/auth/",
      path_info: ["doc", "auth"]
    }

    result = IndexHtml.call(conn, opts)

    assert result.request_path == "/doc/auth/index.md"
    assert result.path_info == ["doc", "auth", "index.md"]
  end

  test "Doesn't match when filename provided" do
    opts = IndexHtml.init(at: "/doc")
    conn = %Conn{
      request_path: "/doc/jquery.js",
      path_info: ["doc", "jquery.js"]
    }

    result = IndexHtml.call(conn, opts)

    assert result == conn
  end
end
