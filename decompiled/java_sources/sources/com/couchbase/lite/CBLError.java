package com.couchbase.lite;

/* loaded from: classes4.dex */
public final class CBLError {

    /* loaded from: classes4.dex */
    public static final class Code {
        public static final int ASSERTION_FAILED = 1;
        public static final int BAD_DOC_ID = 29;
        public static final int BAD_REVISION_ID = 4;
        public static final int BUSY = 16;
        public static final int CANT_OPEN_FILE = 11;
        public static final int CANT_UPGRADE_DATABASE = 30;
        public static final int CONFLICT = 8;
        public static final int CORRUPT_DATA = 15;
        public static final int CORRUPT_REVISION_DATA = 5;
        public static final int CRYPTO = 22;
        public static final int DATABASE_TOO_NEW = 28;
        public static final int DATABASE_TOO_OLD = 27;
        public static final int DNS_FAILURE = 5001;
        public static final int HTTP_AUTH_REQUIRED = 10401;
        public static final int HTTP_BASE = 10000;
        public static final int HTTP_CONFLICT = 10409;
        public static final int HTTP_ENTITY_TOO_LARGE = 10413;
        public static final int HTTP_FORBIDDEN = 10403;
        public static final int HTTP_IM_A_TEAPOT = 10418;
        public static final int HTTP_INTERNAL_SERVER_ERROR = 10500;
        public static final int HTTP_NOT_FOUND = 10404;
        public static final int HTTP_NOT_IMPLEMENTED = 10501;
        public static final int HTTP_PROXY_AUTH_REQUIRED = 10407;
        public static final int HTTP_SERVICE_UNAVAILABLE = 10503;
        public static final int INVALID_PARAMETER = 9;
        public static final int INVALID_QUERY = 23;
        public static final int INVALID_QUERY_PARAM = 25;
        public static final int INVALID_REDIRECT = 5012;
        public static final int INVALID_URL = 5004;
        public static final int IO_ERROR = 12;
        public static final int MEMORY_ERROR = 13;
        public static final int MISSING_INDEX = 24;
        public static final int NETWORK_OFFSET = 5000;
        public static final int NOT_A_DATABASE_FILE = 20;
        public static final int NOT_FOUND = 7;
        public static final int NOT_IN_TRANSACTION = 17;
        public static final int NOT_OPEN = 6;
        public static final int NOT_WRITABLE = 14;
        public static final int REMOTE_ERROR = 26;
        public static final int TIMEOUT = 5003;
        public static final int TLS_CERT_EXPIRED = 5007;
        public static final int TLS_CERT_UNKNOWN_ROOT = 5011;
        public static final int TLS_CERT_UNTRUSTED = 5008;
        public static final int TLS_CLIENT_CERT_REJECTED = 5010;
        public static final int TLS_CLIENT_CERT_REQUIRED = 5009;
        public static final int TLS_HANDSHAKE_FAILED = 5006;
        public static final int TOO_MANY_REDIRECTS = 5005;
        public static final int TRANSACTION_NOT_CLOSED = 18;
        public static final int UNEXPECTED_ERROR = 10;
        public static final int UNIMPLEMENTED = 2;
        public static final int UNKNOWN_HOST = 5002;
        public static final int UNSUPPORTED = 19;
        public static final int UNSUPPORTED_ENCRYPTION = 3;
        public static final int WEB_SOCKET_ABNORMAL_CLOSE = 11006;
        public static final int WEB_SOCKET_BAD_MESSAGE_FORMAT = 11007;
        public static final int WEB_SOCKET_CANT_FULFILL = 11011;
        public static final int WEB_SOCKET_CLOSE_USER_PERMANENT = 14002;
        public static final int WEB_SOCKET_CLOSE_USER_TRANSIENT = 14001;
        public static final int WEB_SOCKET_DATA_ERROR = 11003;
        public static final int WEB_SOCKET_GOING_AWAY = 11001;
        public static final int WEB_SOCKET_MESSAGE_TOO_BIG = 11009;
        public static final int WEB_SOCKET_MISSING_EXTENSION = 11010;
        public static final int WEB_SOCKET_NORMAL_CLOSE = 11000;
        public static final int WEB_SOCKET_POLICY_ERROR = 11008;
        public static final int WEB_SOCKET_PROTOCOL_ERROR = 11002;
        public static final int WEB_SOCKET_TLS_FAILURE = 11015;
        public static final int WEB_SOCKET_USER = 14000;
        public static final int WRONG_FORMAT = 21;

        private Code() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class Domain {
        public static final String CBLITE = "CouchbaseLite";
        public static final String FLEECE = "CouchbaseLite.Fleece";
        public static final String POSIX = "POSIXErrorDomain";
        public static final String SQLITE = "CouchbaseLite.SQLite";

        private Domain() {
        }
    }

    private CBLError() {
    }
}
