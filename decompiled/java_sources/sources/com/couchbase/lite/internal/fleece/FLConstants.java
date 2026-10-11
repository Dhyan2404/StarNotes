package com.couchbase.lite.internal.fleece;

/* loaded from: classes4.dex */
public final class FLConstants {

    /* loaded from: classes4.dex */
    public static final class Error {
        public static final int ENCODE_ERROR = 4;
        public static final int INTERNAL_ERROR = 7;
        public static final int INVALID_DATA = 3;
        public static final int JSON_ERROR = 5;
        public static final int MEMORY_ERROR = 1;
        public static final int NOT_FOUND = 8;
        public static final int NO_ERROR = 0;
        public static final int OUT_OF_RANGE = 2;
        public static final int UNKNOWN_VALUE = 6;

        private Error() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class ValueType {
        public static final int ARRAY = 5;
        public static final int BOOLEAN = 1;
        public static final int DATA = 4;
        public static final int DICT = 6;
        public static final int NULL = 0;
        public static final int NUMBER = 2;
        public static final int STRING = 3;
        public static final int UNDEFINED = -1;

        private ValueType() {
        }
    }

    private FLConstants() {
    }
}
