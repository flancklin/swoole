<?php
//访问方式   浏览器输入http://www.13sui.cn:32773/?a=aaaa
$http = new Swoole\Http\Server("0.0.0.0", 32773);

$http->on('request', function ($request, $response) {
    //避免chrome请求两次
//    if ($request->server['path_info'] == '/favicon.ico' || $request->server['request_uri'] == '/favicon.ico') {
//        $response->end();
//        return;
//    }
    var_dump($request->get, $request->post);
    $response->header("Content-Type", "text/html; charset=utf-8");
    $response->end("<h1>Hello Swoole. #".rand(1000, 9999)."</h1>");
});
