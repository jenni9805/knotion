import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Serie {
    Serie({
      required  this.aliases,
      required  this.apiDetailUrl,
      required  this.countOfEpisodes,
      required  this.dateAdded,
      required  this.dateLastUpdated,
      required  this.deck,
      required  this.description,
      required  this.firstEpisode,
      required  this.id,
      required  this.image,
      required  this.lastEpisode,
      required  this.name,
      required  this.publisher,
      required  this.siteDetailUrl,
      required  this.startYear,
    });

    String aliases;
    String apiDetailUrl;
    int countOfEpisodes;
    DateTime dateAdded;
    DateTime dateLastUpdated;
    String deck;
    String description;
    FirstEpisode firstEpisode;
    int id;
    Image image;
    FirstEpisode lastEpisode;
    String name;
    FirstEpisode publisher;
    String siteDetailUrl;
    String startYear;

    factory Serie.fromJson(String str) => Serie.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Serie.fromMap(Map<String, dynamic> json) => Serie(
        aliases: json["aliases"] == null ? null : json["aliases"],
        apiDetailUrl: json["api_detail_url"],
        countOfEpisodes: json["count_of_episodes"],
        dateAdded: DateTime.parse(json["date_added"]),
        dateLastUpdated: DateTime.parse(json["date_last_updated"]),
        deck: json["deck"] == null ? null : json["deck"],
        description: json["description"] == null ? null : json["description"],
        firstEpisode: FirstEpisode.fromMap(json["first_episode"]),
        id: json["id"],
        image: Image.fromMap(json["image"]),
        lastEpisode: FirstEpisode.fromMap(json["last_episode"]),
        name: json["name"],
        publisher: json["publisher"] == null ? null : FirstEpisode.fromMap(json["publisher"]),
        siteDetailUrl: json["site_detail_url"],
        startYear: json["start_year"],
    );

    Map<String, dynamic> toMap() => {
        "aliases": aliases == null ? null : aliases,
        "api_detail_url": apiDetailUrl,
        "count_of_episodes": countOfEpisodes,
        "date_added": dateAdded.toIso8601String(),
        "date_last_updated": dateLastUpdated.toIso8601String(),
        "deck": deck == null ? null : deck,
        "description": description == null ? null : description,
        "first_episode": firstEpisode.toMap(),
        "id": id,
        "image": image.toMap(),
        "last_episode": lastEpisode.toMap(),
        "name": name,
        "publisher": publisher == null ? null : publisher.toMap(),
        "site_detail_url": siteDetailUrl,
        "start_year": startYear,
    };
}

class FirstEpisode {
    FirstEpisode({
    required  this.apiDetailUrl,
    required  this.id,
    required  this.name,
    required  this.episodeNumber,
    });

    String apiDetailUrl;
    int id;
    String name;
    String episodeNumber;

    factory FirstEpisode.fromJson(String str) => FirstEpisode.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory FirstEpisode.fromMap(Map<String, dynamic> json) => FirstEpisode(
        apiDetailUrl: json["api_detail_url"],
        id: json["id"],
        name: json["name"],
        episodeNumber: json["episode_number"] == null ? null : json["episode_number"],
    );

    Map<String, dynamic> toMap() => {
        "api_detail_url": apiDetailUrl,
        "id": id,
        "name": name,
        "episode_number": episodeNumber == null ? null : episodeNumber,
    };
}

class Image {
    Image({
      required this.iconUrl,
      required this.mediumUrl,
      required this.screenUrl,
    required   this.screenLargeUrl,
      required this.smallUrl,
      required this.superUrl,
      required this.thumbUrl,
      required this.tinyUrl,
      required this.originalUrl,
      required this.imageTags,
    });

    String iconUrl;
    String mediumUrl;
    String screenUrl;
    String screenLargeUrl;
    String smallUrl;
    String superUrl;
    String thumbUrl;
    String tinyUrl;
    String originalUrl;
    ImageTags imageTags;

    factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Image.fromMap(Map<String, dynamic> json) => Image(
        iconUrl: json["icon_url"],
        mediumUrl: json["medium_url"],
        screenUrl: json["screen_url"],
        screenLargeUrl: json["screen_large_url"],
        smallUrl: json["small_url"],
        superUrl: json["super_url"],
        thumbUrl: json["thumb_url"],
        tinyUrl: json["tiny_url"],
        originalUrl: json["original_url"],
    );

    Map<String, dynamic> toMap() => {
        "icon_url": iconUrl,
        "medium_url": mediumUrl,
        "screen_url": screenUrl,
        "screen_large_url": screenLargeUrl,
        "small_url": smallUrl,
        "super_url": superUrl,
        "thumb_url": thumbUrl,
        "tiny_url": tinyUrl,
        "original_url": originalUrl,
        "image_tags": imageTagsValues.reverse[imageTags],
    };
}

enum ImageTags { ALL_IMAGES, ALL_IMAGES_WIKI_X_MEN_EVOLUTION_TITLE_CARDS, ALL_IMAGES_WIKI, ALL_IMAGES_STAR_WARS, ALL_IMAGES_THE_FAMILY, ALL_IMAGES_OTHERS, ALL_IMAGES_SILVER_SURFER_ANIMATED_1998, ALL_IMAGES_OFFICIAL_SERIES_ART }

final imageTagsValues = EnumValues({
    "All Images": ImageTags.ALL_IMAGES,
    "All Images,Official Series Art": ImageTags.ALL_IMAGES_OFFICIAL_SERIES_ART,
    "All Images,Others": ImageTags.ALL_IMAGES_OTHERS,
    "All Images,Silver Surfer Animated (1998)": ImageTags.ALL_IMAGES_SILVER_SURFER_ANIMATED_1998,
    "All Images,Star Wars": ImageTags.ALL_IMAGES_STAR_WARS,
    "All Images,The Family": ImageTags.ALL_IMAGES_THE_FAMILY,
    "All Images,Wiki": ImageTags.ALL_IMAGES_WIKI,
    "All Images,Wiki - X-Men Evolution Title Cards": ImageTags.ALL_IMAGES_WIKI_X_MEN_EVOLUTION_TITLE_CARDS
});

/**
 * Basic Auth
 *
 * GET https://postman-echo.com/basic-auth
 *
 * This endpoint simulates a **basic-auth** protected endpoint.
 * The endpoint accepts a default username and password and returns a status code of `200
 * ok` only if the same is provided.
 * Otherwise it will return a status code `401 unauthorized`.
 *
 * > Username: `postman`
 * >
 * > Password: `password`
 *
 * To use this endpoint, send a request with the header `Authorization: Basic
 * cG9zdG1hbjpwYXNzd29yZA==`.
 * The cryptic latter half of the header value is a base64 encoded concatenation of the
 * default username and password.
 * Using Postman, to send this request, you can simply fill in the username and password in
 * the "Authorization" tab and Postman will do the rest for you.
 *
 * To know more about basic authentication, refer to the [Basic Access
 * Authentication](https://en.wikipedia.org/wiki/Basic_access_authentication) wikipedia
 * article.
 * The article on [authentication
 *
 * helpers](https://www.getpostman.com/docs/helpers#basic-auth?source=echo-collection-app-onboarding)
 * elaborates how to use the same within the Postman app.
 */
class BasicAuth {
    BasicAuth({
       required this.authenticated,
    });

    bool authenticated;

    factory BasicAuth.fromJson(String str) => BasicAuth.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BasicAuth.fromMap(Map<String, dynamic> json) => BasicAuth(
        authenticated: json["authenticated"],
    );

    Map<String, dynamic> toMap() => {
        "authenticated": authenticated,
    };
}

/**
 * OAuth1.0 Verify Signature
 *
 * GET https://postman-echo.com/oauth1
 *
 * OAuth1.0a is a specification that defines a protocol that can be used by one
 * service to access "protected" resources (endpoints) on another service. A
 * major part of OAuth1.0 is HTTP Request Signing. This endpoint allows you to
 * check whether the request calculation works properly in the client.
 *
 * The endpoint supports the HTTP ``Authorization`` header. In case the signature
 * verification fails, the endpoint provides the four debug values,
 *
 * * ``base_uri``
 * * ``normalized_param_string``
 * * ``base_string``
 * * ``signing_key``
 *
 * For more details about these parameters, check the [OAuth1.0a
 * Specification](http://oauth.net/core/1.0a/)
 *
 * In order to use this endpoint, you can set the following values:
 *
 * > Consumer Key: ``RKCGzna7bv9YD57c``
 * >
 * > Consumer Secret: ``D+EdQ-gs$-%@2Nu7``
 *
 * If you are using Postman, also check the "Add params to header" and
 * "Auto add parameters" boxes.
 */
class OAuth10VerifySignature {
    OAuth10VerifySignature({
      required  this.status,
      required  this.message,
      required  this.baseUri,
      required  this.normalizedParamString,
      required  this.baseString,
      required  this.signingKey,
    });

    String status;
    String message;
    String baseUri;
    String normalizedParamString;
    String baseString;
    String signingKey;

    factory OAuth10VerifySignature.fromJson(String str) => OAuth10VerifySignature.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory OAuth10VerifySignature.fromMap(Map<String, dynamic> json) => OAuth10VerifySignature(
        status: json["status"],
        message: json["message"],
        baseUri: json["base_uri"] == null ? null : json["base_uri"],
        normalizedParamString: json["normalized_param_string"] == null ? null : json["normalized_param_string"],
        baseString: json["base_string"] == null ? null : json["base_string"],
        signingKey: json["signing_key"] == null ? null : json["signing_key"],
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "base_uri": baseUri == null ? null : baseUri,
        "normalized_param_string": normalizedParamString == null ? null : normalizedParamString,
        "base_string": baseString == null ? null : baseString,
        "signing_key": signingKey == null ? null : signingKey,
    };
}

/**
 * Hawk Auth
 *
 * GET https://postman-echo.com/auth/hawk
 *
 * This endpoint is a Hawk Authentication protected endpoint. [Hawk
 * authentication](https://github.com/hueniverse/hawk) is a widely used protocol for
 * protecting API endpoints. One of Hawk's main goals is to enable HTTP authentication for
 * services that do not use TLS (although it can be used in conjunction with TLS as well).
 *
 * In order to use this endpoint, select the "Hawk Auth" helper inside Postman, and set the
 * following values:
 *
 * Hawk Auth ID: `dh37fgj492je`
 *
 * Hawk Auth Key: `werxhqb98rpaxn39848xrunpaw3489ruxnpa98w4rxn`
 *
 * Algorithm: `sha256`
 *
 * The rest of the values are optional, and can be left blank. Hitting send should give you
 * a response with a status code of 200 OK.
 */
class HawkAuth {
    HawkAuth({
      required  this.status,
      required  this.message,
    });

    String status;
    String message;

    factory HawkAuth.fromJson(String str) => HawkAuth.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HawkAuth.fromMap(Map<String, dynamic> json) => HawkAuth(
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
    };
}

/**
 * Set Cookies
 *
 * GET https://postman-echo.com/cookies/set?foo1=bar1&foo2=bar2
 *
 * The cookie setter endpoint accepts a list of cookies and their values as part of URL
 * parameters of a `GET` request. These cookies are saved and can be subsequently retrieved
 * or deleted. The response of this request returns a JSON with all cookies listed.
 *
 * To set your own set of cookies, simply replace the URL parameters "foo1=bar1&foo2=bar2"
 * with your own set of key-value pairs.
 */
class SetCookies {
    SetCookies({
      required this.cookies,
    });

    SetCookiesCookies cookies;

    factory SetCookies.fromJson(String str) => SetCookies.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SetCookies.fromMap(Map<String, dynamic> json) => SetCookies(
        cookies: SetCookiesCookies.fromMap(json["cookies"]),
    );

    Map<String, dynamic> toMap() => {
        "cookies": cookies.toMap(),
    };
}

class SetCookiesCookies {
    SetCookiesCookies({
      required this.foo1,
       required this.foo2,
    });

    String foo1;
    String foo2;

    factory SetCookiesCookies.fromJson(String str) => SetCookiesCookies.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SetCookiesCookies.fromMap(Map<String, dynamic> json) => SetCookiesCookies(
        foo1: json["foo1"],
        foo2: json["foo2"],
    );

    Map<String, dynamic> toMap() => {
        "foo1": foo1,
        "foo2": foo2,
    };
}

/**
 * Get Cookies
 *
 * GET https://postman-echo.com/cookies
 *
 * Use this endpoint to get a list of all cookies that are stored with respect to this
 * domain. Whatever key-value pairs that has been previously set by calling the "Set
 * Cookies" endpoint, will be returned as response JSON.
 */
class GetCookies {
    GetCookies({
       required this.cookies,
    });

    GetCookiesCookies cookies;

    factory GetCookies.fromJson(String str) => GetCookies.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GetCookies.fromMap(Map<String, dynamic> json) => GetCookies(
        cookies: GetCookiesCookies.fromMap(json["cookies"]),
    );

    Map<String, dynamic> toMap() => {
        "cookies": cookies.toMap(),
    };
}

class GetCookiesCookies {
    GetCookiesCookies({
       required this.foo2,
    });

    String foo2;

    factory GetCookiesCookies.fromJson(String str) => GetCookiesCookies.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GetCookiesCookies.fromMap(Map<String, dynamic> json) => GetCookiesCookies(
        foo2: json["foo2"],
    );

    Map<String, dynamic> toMap() => {
        "foo2": foo2,
    };
}

/**
 * Delete Cookies
 *
 * GET https://postman-echo.com/cookies/delete?foo1&foo2
 *
 * One or more cookies that has been set for this domain can be deleted by providing the
 * cookie names as part of the URL parameter. The response of this request is a JSON
 * containing the list of currently set cookies.
 */
class DeleteCookies {
    DeleteCookies({
      required this.cookies,
    });

    GetCookiesCookies cookies;

    factory DeleteCookies.fromJson(String str) => DeleteCookies.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DeleteCookies.fromMap(Map<String, dynamic> json) => DeleteCookies(
        cookies: GetCookiesCookies.fromMap(json["cookies"]),
    );

    Map<String, dynamic> toMap() => {
        "cookies": cookies.toMap(),
    };
}

/**
 * Request Headers
 *
 * GET https://postman-echo.com/headers
 *
 * A `GET` request to this endpoint returns the list of all request headers as part of the
 * response JSON.
 * In Postman, sending your own set of headers through the [Headers
 *
 * tab](https://www.getpostman.com/docs/requests#headers?source=echo-collection-app-onboarding)
 * will reveal the headers as part of the response.
 */
class RequestHeaders {
    RequestHeaders({
      required  this.headers,
    });

    Headers headers;

    factory RequestHeaders.fromJson(String str) => RequestHeaders.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RequestHeaders.fromMap(Map<String, dynamic> json) => RequestHeaders(
        headers: Headers.fromMap(json["headers"]),
    );

    Map<String, dynamic> toMap() => {
        "headers": headers.toMap(),
    };
}

class Headers {
    Headers({
      required  this.host,
      required  this.accept,
      required  this.acceptEncoding,
      required  this.acceptLanguage,
      required  this.cacheControl,
      required  this.mySampleHeader,
      required  this.postmanToken,
      required  this.userAgent,
      required  this.xForwardedPort,
      required  this.xForwardedProto,
    });

    String host;
    String accept;
    String acceptEncoding;
    String acceptLanguage;
    String cacheControl;
    String mySampleHeader;
    String postmanToken;
    String userAgent;
    String xForwardedPort;
    String xForwardedProto;

    factory Headers.fromJson(String str) => Headers.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Headers.fromMap(Map<String, dynamic> json) => Headers(
        host: json["host"],
        accept: json["accept"],
        acceptEncoding: json["accept-encoding"],
        acceptLanguage: json["accept-language"],
        cacheControl: json["cache-control"],
        mySampleHeader: json["my-sample-header"],
        postmanToken: json["postman-token"],
        userAgent: json["user-agent"],
        xForwardedPort: json["x-forwarded-port"],
        xForwardedProto: json["x-forwarded-proto"],
    );

    Map<String, dynamic> toMap() => {
        "host": host,
        "accept": accept,
        "accept-encoding": acceptEncoding,
        "accept-language": acceptLanguage,
        "cache-control": cacheControl,
        "my-sample-header": mySampleHeader,
        "postman-token": postmanToken,
        "user-agent": userAgent,
        "x-forwarded-port": xForwardedPort,
        "x-forwarded-proto": xForwardedProto,
    };
}

/**
 * Response Headers
 *
 * GET
 * https://postman-echo.com/response-headers?Content-Type=text/html&test=response_headers
 *
 * This endpoint causes the server to send custom set of response headers. Providing header
 * values as part of the URL parameters of a `GET` request to this endpoint returns the same
 * as part of response header.
 *
 * To send your own set of headers, simply add or replace the the URL parameters with your
 * own set.
 */
class ResponseHeaders {
    ResponseHeaders({
       required this.contentType,
       required this.test,
    });

    String contentType;
    String test;

    factory ResponseHeaders.fromJson(String str) => ResponseHeaders.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ResponseHeaders.fromMap(Map<String, dynamic> json) => ResponseHeaders(
        contentType: json["Content-Type"],
        test: json["test"],
    );

    Map<String, dynamic> toMap() => {
        "Content-Type": contentType,
        "test": test,
    };
}

/**
 * Response Status Code
 *
 * GET https://postman-echo.com/status/200
 *
 * This endpoint allows one to instruct the server which status code to respond with.
 *
 * Every response is accompanied by a status code. The status code provides a summary of the
 * nature of response sent by the server. For example, a status code of `200` means
 * everything is okay with the response and a code of `404` implies that the requested URL
 * does not exist on server.
 * A list of all valid HTTP status code can be found at the [List of Status
 * Codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) wikipedia article. When
 * using Postman, the response status code is described for easy reference.
 *
 * Note that if an invalid status code is requested to be sent, the server returns a status
 * code of `400 Bad Request`.
 */
class ResponseStatusCode {
    ResponseStatusCode({
       required this.status,
    });

    int status;

    factory ResponseStatusCode.fromJson(String str) => ResponseStatusCode.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ResponseStatusCode.fromMap(Map<String, dynamic> json) => ResponseStatusCode(
        status: json["status"],
    );

    Map<String, dynamic> toMap() => {
        "status": status,
    };
}

/**
 * Delay Response
 *
 * GET https://postman-echo.com/delay/3
 *
 * Using this endpoint one can configure how long it takes for the server to come back with
 * a response. Appending a number to the URL defines the time (in seconds) the server will
 * wait before responding.
 *
 * Note that a maximum delay of 10 seconds is accepted by the server.
 */
class DelayResponse {
    DelayResponse({
      required  this.delay,
    });

    String delay;

    factory DelayResponse.fromJson(String str) => DelayResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DelayResponse.fromMap(Map<String, dynamic> json) => DelayResponse(
        delay: json["delay"],
    );

    Map<String, dynamic> toMap() => {
        "delay": delay,
    };
}

/**
 * Timestamp validity
 *
 * GET https://postman-echo.com/time/valid?timestamp=2016-10-10
 *
 * A simple `GET` request to `/time/valid` to determine the validity of the timestamp,
 * (current by default).
 * This endpoint accepts `timestamp`, `locale`, `format`, and `strict` query parameters to
 * construct the date time instance to check against.
 *
 * Responses are provided in JSON format, with a valid key to indicate the result. The
 * response code is `200`.
 *
 * ```
 * {
 * valid: true/false
 * }
 * ```
 */
class TimestampValidity {
    TimestampValidity({
       required this.valid,
    });

    bool valid;

    factory TimestampValidity.fromJson(String str) => TimestampValidity.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TimestampValidity.fromMap(Map<String, dynamic> json) => TimestampValidity(
        valid: json["valid"],
    );

    Map<String, dynamic> toMap() => {
        "valid": valid,
    };
}

/**
 * Transform collection from format v1 to v2
 *
 * POST https://postman-echo.com/transform/collection?from=1&to=2
 */
class TransformCollectionFromFormatV1ToV2 {
    TransformCollectionFromFormatV1ToV2({
      required  this.variables,
      required this.info,
      required  this.item,
    });

    List<dynamic> variables;
    Info info;
    List<Item> item;

    factory TransformCollectionFromFormatV1ToV2.fromJson(String str) => TransformCollectionFromFormatV1ToV2.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TransformCollectionFromFormatV1ToV2.fromMap(Map<String, dynamic> json) => TransformCollectionFromFormatV1ToV2(
        variables: List<dynamic>.from(json["variables"].map((x) => x)),
        info: Info.fromMap(json["info"]),
        item: List<Item>.from(json["item"].map((x) => Item.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "variables": List<dynamic>.from(variables.map((x) => x)),
        "info": info.toMap(),
        "item": List<dynamic>.from(item.map((x) => x.toMap())),
    };
}

class Info {
    Info({
      required  this.name,
      required  this.postmanId,
      required  this.description,
      required  this.schema,
    });

    String name;
    String postmanId;
    String description;
    String schema;

    factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Info.fromMap(Map<String, dynamic> json) => Info(
        name: json["name"],
        postmanId: json["_postman_id"],
        description: json["description"],
        schema: json["schema"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "_postman_id": postmanId,
        "description": description,
        "schema": schema,
    };
}

class Item {
    Item({
      required this.name,
      required  this.event,
      required  this.request,
      required  this.response,
    });

    String name;
    List<Event> event;
    ItemRequest request;
    List<dynamic> response;

    factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Item.fromMap(Map<String, dynamic> json) => Item(
        name: json["name"],
        event: json["event"] == null ? null : List<Event>.from(json["event"].map((x) => Event.fromMap(x))),
        request: ItemRequest.fromMap(json["request"]),
        response: List<dynamic>.from(json["response"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "event": event == null ? null : List<dynamic>.from(event.map((x) => x.toMap())),
        "request": request.toMap(),
        "response": List<dynamic>.from(response.map((x) => x)),
    };
}

class Event {
    Event({
      required  this.listen,
      required  this.script,
    });

    String listen;
    Script script;

    factory Event.fromJson(String str) => Event.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Event.fromMap(Map<String, dynamic> json) => Event(
        listen: json["listen"],
        script: Script.fromMap(json["script"]),
    );

    Map<String, dynamic> toMap() => {
        "listen": listen,
        "script": script.toMap(),
    };
}

class Script {
    Script({
      required  this.type,
      required  this.exec,
    });

    String type;
    List<String> exec;

    factory Script.fromJson(String str) => Script.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Script.fromMap(Map<String, dynamic> json) => Script(
        type: json["type"],
        exec: List<String>.from(json["exec"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "type": type,
        "exec": List<dynamic>.from(exec.map((x) => x)),
    };
}

class ItemRequest {
    ItemRequest({
      required  this.url,
      required  this.method,
      required  this.header,
      required  this.body,
    });

    String url;
    String method;
    List<Header> header;
    Body body;

    factory ItemRequest.fromJson(String str) => ItemRequest.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ItemRequest.fromMap(Map<String, dynamic> json) => ItemRequest(
        url: json["url"],
        method: json["method"],
        header: List<Header>.from(json["header"].map((x) => Header.fromMap(x))),
        body: Body.fromMap(json["body"]),
    );

    Map<String, dynamic> toMap() => {
        "url": url,
        "method": method,
        "header": List<dynamic>.from(header.map((x) => x.toMap())),
        "body": body.toMap(),
    };
}

class Body {
    Body({
     required   this.mode,
      required this.raw,
    });

    String mode;
    String raw;

    factory Body.fromJson(String str) => Body.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Body.fromMap(Map<String, dynamic> json) => Body(
        mode: json["mode"],
        raw: json["raw"],
    );

    Map<String, dynamic> toMap() => {
        "mode": mode,
        "raw": raw,
    };
}

class Header {
    Header({
       required this.key,
       required this.value,
       required this.description,
    });

    String key;
    String value;
    String description;

    factory Header.fromJson(String str) => Header.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Header.fromMap(Map<String, dynamic> json) => Header(
        key: json["key"],
        value: json["value"],
        description: json["description"],
    );

    Map<String, dynamic> toMap() => {
        "key": key,
        "value": value,
        "description": description,
    };
}

/**
 * Transform collection from format v2 to v1
 *
 * POST https://postman-echo.com/transform/collection?from=2&to=1
 */
class TransformCollectionFromFormatV2ToV1 {
    TransformCollectionFromFormatV2ToV1({
      required  this.id,
      required  this.name,
      required  this.description,
      required  this.order,
      required  this.folders,
      required  this.requests,
    });

    String id;
    String name;
    String description;
    List<String> order;
    List<dynamic> folders;
    List<RequestElement> requests;

    factory TransformCollectionFromFormatV2ToV1.fromJson(String str) => TransformCollectionFromFormatV2ToV1.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TransformCollectionFromFormatV2ToV1.fromMap(Map<String, dynamic> json) => TransformCollectionFromFormatV2ToV1(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        order: List<String>.from(json["order"].map((x) => x)),
        folders: List<dynamic>.from(json["folders"].map((x) => x)),
        requests: List<RequestElement>.from(json["requests"].map((x) => RequestElement.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "order": List<dynamic>.from(order.map((x) => x)),
        "folders": List<dynamic>.from(folders.map((x) => x)),
        "requests": List<dynamic>.from(requests.map((x) => x.toMap())),
    };
}

class RequestElement {
    RequestElement({
       required this.id,
       required this.name,
      required  this.collectionId,
       required this.method,
       required this.headers,
       required this.data,
       required this.rawModeData,
       required this.tests,
       required this.preRequestScript,
       required this.url,
       required this.dataMode,
    });

    String id;
    String name;
    String collectionId;
    String method;
    String headers;
    List<dynamic> data;
    String rawModeData;
    String tests;
    String preRequestScript;
    String url;
    String dataMode;

    factory RequestElement.fromJson(String str) => RequestElement.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RequestElement.fromMap(Map<String, dynamic> json) => RequestElement(
        id: json["id"],
        name: json["name"],
        collectionId: json["collectionId"],
        method: json["method"],
        headers: json["headers"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
        rawModeData: json["rawModeData"],
        tests: json["tests"] == null ? null : json["tests"],
        preRequestScript: json["preRequestScript"] == null ? null : json["preRequestScript"],
        url: json["url"],
        dataMode: json["dataMode"] == null ? null : json["dataMode"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "collectionId": collectionId,
        "method": method,
        "headers": headers,
        "data": List<dynamic>.from(data.map((x) => x)),
        "rawModeData": rawModeData,
        "tests": tests == null ? null : tests,
        "preRequestScript": preRequestScript == null ? null : preRequestScript,
        "url": url,
        "dataMode": dataMode == null ? null : dataMode,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
