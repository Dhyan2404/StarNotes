package com.couchbase.lite.internal.core;

import androidx.annotation.VisibleForTesting;

/* loaded from: classes4.dex */
public final class C4Constants {

    /* loaded from: classes4.dex */
    public static final class DatabaseFlags {
        private static final int AUTO_COMPACT = 4;
        static final int CREATE = 1;
        public static final int DISABLE_MMAP = 16;

        @VisibleForTesting
        public static final int DISC_FULL_SYNC = 128;

        @VisibleForTesting
        static final int FAKE_CLOCK = 256;
        private static final int NON_OBSERVABLE = 64;
        private static final int NO_UPGRADE = 32;

        @VisibleForTesting
        static final int READ_ONLY = 2;
        static final int VERSION_VECTORS = 8;

        private DatabaseFlags() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class DocumentFlags {
        public static final int CONFLICTED = 2;
        public static final int DELETED = 1;
        public static final int EXISTS = 4096;
        public static final int HAS_ATTACHMENTS = 4;

        private DocumentFlags() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class EncryptionAlgorithm {
        public static final int AES256 = 1;
        public static final int NONE = 0;

        private EncryptionAlgorithm() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class EncryptionKeySize {
        public static final int AES256 = 32;

        private EncryptionKeySize() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class EnumeratorFlags {
        public static final int DEFAULT = 48;
        public static final int DESCENDING = 1;
        public static final int INCLUDE_BODIES = 32;
        public static final int INCLUDE_DELETED = 8;
        public static final int INCLUDE_NON_CONFLICTED = 16;
        public static final int INCLUDE_REV_HISTORY = 64;
        public static final int UNSORTED = 2;

        private EnumeratorFlags() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class ErrorDomain {
        public static final int FLEECE = 4;
        public static final int LITE_CORE = 1;
        public static final int MAX_ERROR_DOMAINS = 7;
        public static final int MBED_TLS = 7;
        public static final int NETWORK = 5;
        public static final int POSIX = 2;
        public static final int SQLITE = 3;
        public static final int UNUSED = 8;
        public static final int WEB_SOCKET = 6;

        private ErrorDomain() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class HttpError {
        public static final int AUTH_REQUIRED = 401;
        public static final int CONFLICT = 409;
        public static final int ENTITY_TOO_LARGE = 413;
        public static final int FORBIDDEN = 403;
        public static final int IM_A_TEAPOT = 418;
        public static final int INTERNAL_SERVER_ERROR = 500;
        public static final int MULTIPLE_CHOICE = 300;
        public static final int NOT_FOUND = 404;
        public static final int NOT_IMPLEMENTED = 501;
        public static final int PROXY_AUTH_REQUIRED = 407;
        public static final int SERVICE_UNAVAILABLE = 503;
        public static final int STATUS_MAX = 600;
        public static final int STATUS_MIN = 100;
        public static final int SWITCH_PROTOCOL = 101;

        private HttpError() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class IndexType {
        public static final int ARRAY = 2;
        public static final int FULL_TEXT = 1;
        public static final int PREDICTIVE = 3;
        public static final int VALUE = 0;

        private IndexType() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class LiteCoreError {
        public static final int ASSERTION_FAILED = 1;
        public static final int BAD_DOC_ID = 29;
        public static final int BAD_REVISION_ID = 4;
        public static final int BUSY = 16;
        public static final int CANT_OPEN_FILE = 11;
        public static final int CANT_UPGRADE_DATABASE = 30;
        public static final int CONFLICT = 8;
        public static final int CORRUPT_DATA = 15;
        public static final int CORRUPT_DELTA = 32;
        public static final int CORRUPT_REVISION_DATA = 5;
        public static final int CRYPTO = 22;
        public static final int DATABASE_TOO_NEW = 28;
        public static final int DATABASE_TOO_OLD = 27;
        public static final int DELTA_BASE_UNKNOWN = 31;
        public static final int INVALID_PARAMETER = 9;
        public static final int INVALID_QUERY = 23;
        public static final int INVALID_QUERY_PARAM = 25;
        public static final int IO_ERROR = 12;
        public static final int MAX_ERROR_CODES = 32;
        public static final int MEMORY_ERROR = 13;
        public static final int MISSING_INDEX = 24;
        public static final int NOT_A_DATABASE_FILE = 20;
        public static final int NOT_FOUND = 7;
        public static final int NOT_IN_TRANSACTION = 17;
        public static final int NOT_OPEN = 6;
        public static final int NOT_WRITABLE = 14;
        public static final int REMOTE_ERROR = 26;
        public static final int SUCCESS = 0;
        public static final int TRANSACTION_NOT_CLOSED = 18;
        public static final int UNEXPECTED_ERROR = 10;
        public static final int UNIMPLEMENTED = 2;
        public static final int UNSUPPORTED = 19;
        public static final int UNSUPPORTED_ENCRYPTION = 3;
        public static final int UNUSED = 33;
        public static final int WRONG_FORMAT = 21;

        private LiteCoreError() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class LogDomain {
        public static final String ACTOR = "Actor";
        public static final String BLIP = "BLIP";
        public static final String BLIP_MESSAGES = "BLIPMessages";
        public static final String BLOB = "Blob";
        public static final String CHANGES = "Changes";
        public static final String DATABASE = "DB";
        public static final String DEFAULT = "";
        public static final String ENUM = "Enum";
        public static final String LISTENER = "Listener";
        public static final String QUERY = "Query";
        public static final String SQL = "SQL";
        public static final String SYNC = "Sync";
        public static final String SYNC_BUSY = "SyncBusy";
        public static final String TLS = "TLS";
        public static final String WEB_SOCKET = "WS";
        public static final String ZIP = "Zip";

        private LogDomain() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class LogLevel {
        public static final int DEBUG = 0;
        public static final int ERROR = 4;
        public static final int INFO = 2;
        public static final int NONE = 5;
        public static final int VERBOSE = 1;
        public static final int WARNING = 3;

        private LogLevel() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class NetworkError {
        public static final int ADDRESS_NOT_AVAILABLE = 25;
        public static final int BROKEN_PIPE = 26;
        public static final int CONNECTION_ABORTED = 17;
        public static final int CONNECTION_REFUSED = 19;
        public static final int CONNECTION_RESET = 18;
        public static final int DNS_FAILURE = 1;
        public static final int HOST_DOWN = 23;
        public static final int HOST_UNREACHABLE = 24;
        public static final int INVALID_REDIRECT = 12;
        public static final int INVALID_URL = 4;
        public static final int NETWORK_DOWN = 20;
        public static final int NETWORK_RESET = 16;
        public static final int NETWORK_UNREACHABLE = 21;
        public static final int NOT_CONNECTED = 22;
        public static final int TIMEOUT = 3;
        public static final int TLS_CERT_EXPIRED = 7;
        public static final int TLS_CERT_NAME_MISMATCH = 15;
        public static final int TLS_CERT_REVOKED = 14;
        public static final int TLS_CERT_UNKNOWN_ROOT = 11;
        public static final int TLS_CERT_UNTRUSTED = 8;
        public static final int TLS_CLIENT_CERT_REJECTED = 10;
        public static final int TLS_CLIENT_CERT_REQUIRED = 9;
        public static final int TLS_HANDSHAKE_FAILED = 6;
        public static final int TOO_MANY_REDIRECTS = 5;
        public static final int UNKNOWN = 13;
        public static final int UNKNOWN_HOST = 2;
        public static final int UNKNOWN_INTERFACE = 27;
        public static final int UNUSED = 28;

        private NetworkError() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class RevisionFlags {
        public static final int CLOSED = 64;
        public static final int DELETED = 1;
        public static final int HAS_ATTACHMENTS = 8;
        public static final int IS_CONFLICT = 32;
        public static final int KEEP_BODY = 16;
        public static final int LEAF = 2;
        public static final int NEW = 4;
        public static final int PURGED = 128;

        private RevisionFlags() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class WebSocketError {
        public static final int ABNORMAL_CLOSE = 1006;
        public static final int BAD_MESSAGE_FORMAT = 1007;
        public static final int CANT_FULFILL = 1011;
        public static final int DATA_ERROR = 1003;
        public static final int GOING_AWAY = 1001;
        public static final int MESSAGE_TO_BIG = 1009;
        public static final int MISSING_EXTENSION = 1010;
        public static final int NORMAL = 1000;
        public static final int NO_CODE = 1005;
        public static final int POLICY_ERROR = 1008;
        public static final int PROTOCOL_ERROR = 1002;
        public static final int TLS_FAILURE = 1015;
        public static final int USER = 4000;
        public static final int USER_PERMANENT = 4002;
        public static final int USER_TRANSIENT = 4001;

        private WebSocketError() {
        }
    }

    private C4Constants() {
    }

    public static boolean hasFlags(int i, int i2) {
        return (i & i2) == i2;
    }
}
