package com.couchbase.lite;

import com.couchbase.lite.VectorEncoding;
import com.couchbase.lite.VectorIndexConfiguration;

/* loaded from: classes4.dex */
public final class Defaults {

    /* loaded from: classes4.dex */
    public static final class Database {
        public static final boolean FULL_SYNC = false;
        public static final boolean MMAP_ENABLED = true;

        private Database() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class FileLogSink {
        public static final int MAX_KEPT_FILES = 2;
        public static final long MAX_SIZE = 524288;
        public static final boolean USE_PLAINTEXT = false;

        private FileLogSink() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class FullTextIndex {
        public static final boolean IGNORE_ACCENTS = false;

        private FullTextIndex() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class Listener {
        public static final boolean DISABLE_TLS = false;
        public static final boolean ENABLE_DELTA_SYNC = false;
        public static final int PORT = 0;
        public static final boolean READ_ONLY = false;

        private Listener() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class LogFile {
        public static final int MAX_ROTATE_COUNT = 1;
        public static final long MAX_SIZE = 524288;
        public static final boolean USE_PLAINTEXT = false;

        @Deprecated
        public static final boolean USE_PLAIN_TEXT = false;

        private LogFile() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class Replicator {
        public static final boolean ACCEPT_PARENT_COOKIES = false;
        public static final boolean CONTINUOUS = false;
        public static final boolean ENABLE_AUTO_PURGE = true;
        public static final int HEARTBEAT = 300;
        public static final int MAX_ATTEMPTS_CONTINUOUS = Integer.MAX_VALUE;
        public static final int MAX_ATTEMPTS_SINGLE_SHOT = 10;
        public static final int MAX_ATTEMPTS_WAIT_TIME = 300;

        @Deprecated
        public static final int MAX_ATTEMPT_WAIT_TIME = 300;
        public static final boolean SELF_SIGNED_CERTIFICATE_ONLY = false;
        public static final ReplicatorType TYPE = ReplicatorType.PUSH_AND_PULL;

        private Replicator() {
        }
    }

    /* loaded from: classes4.dex */
    public static final class VectorIndex {
        public static final boolean IS_LAZY = false;
        public static final long MAX_TRAINING_SIZE = 0;
        public static final long MIN_TRAINING_SIZE = 0;
        public static final long NUM_PROBES = 0;
        public static final VectorEncoding.ScalarQuantizerType ENCODING = VectorEncoding.ScalarQuantizerType.SQ8;
        public static final VectorIndexConfiguration.DistanceMetric DISTANCE_METRIC = VectorIndexConfiguration.DistanceMetric.EUCLIDEAN_SQUARED;

        private VectorIndex() {
        }
    }

    private Defaults() {
    }
}
