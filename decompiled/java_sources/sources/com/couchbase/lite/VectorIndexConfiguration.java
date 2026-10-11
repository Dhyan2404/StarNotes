package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.Defaults;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class VectorIndexConfiguration extends IndexConfiguration {

    @NonNull
    private VectorEncoding encoding;
    private boolean isLazy;
    private long maxTrainingSize;

    @NonNull
    private DistanceMetric metric;
    private long minTrainingSize;
    private final long numCentroids;
    private final long numDimensions;
    private long numProbes;

    /* loaded from: classes4.dex */
    public enum DistanceMetric {
        EUCLIDEAN_SQUARED("EUCLIDEAN_SQUARED", 1),
        COSINE("COSINE", 2),
        EUCLIDEAN("EUCLIDEAN", 3),
        DOT("DOT", 4);

        private final int code;

        @NonNull
        private final String name;

        DistanceMetric(@NonNull String str, int i) {
            this.name = str;
            this.code = i;
        }

        public int getCode() {
            return this.code;
        }

        @NonNull
        public String getSQLName() {
            return this.name;
        }
    }

    public VectorIndexConfiguration(@NonNull String str, long j, long j2) {
        super(str);
        this.encoding = VectorEncoding.scalarQuantizer(Defaults.VectorIndex.ENCODING);
        this.metric = Defaults.VectorIndex.DISTANCE_METRIC;
        this.minTrainingSize = 0L;
        this.maxTrainingSize = 0L;
        this.numProbes = 0L;
        this.isLazy = false;
        if (2 > j || j > 4096) {
            throw new IllegalArgumentException("Dimensions must be 2 <= dimensions <= 2048: " + j);
        }
        if (1 <= j2 && j2 <= 64000) {
            this.numDimensions = j;
            this.numCentroids = j2;
        } else {
            throw new IllegalArgumentException("Centroids must be 1 <= centroids <= 64000: " + j2);
        }
    }

    @Override // com.couchbase.lite.AbstractIndex
    public void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException {
        long j = this.maxTrainingSize;
        if (j != 0 && this.minTrainingSize > j) {
            throw new IllegalArgumentException("Attempt to create a Vector Index with minTrainingSize > maxTrainingSize: " + this.minTrainingSize + ", " + this.maxTrainingSize);
        }
        long subQuantizers = this.encoding.getSubQuantizers();
        if (subQuantizers == 0 || this.numDimensions % subQuantizers == 0) {
            c4Collection.createVectorIndex(str, getIndexSpec(), this.numDimensions, this.metric.getCode(), this.numCentroids, this.encoding.getTypeCode(), subQuantizers, this.encoding.getBits(), this.minTrainingSize, this.maxTrainingSize, this.numProbes, this.isLazy);
            return;
        }
        throw new IllegalArgumentException("Dimensions must be an integer multiple of subquantizers: " + this.numDimensions + ", " + subQuantizers);
    }

    public long getCentroids() {
        return this.numCentroids;
    }

    public long getDimensions() {
        return this.numDimensions;
    }

    @NonNull
    public VectorEncoding getEncoding() {
        return this.encoding;
    }

    @NonNull
    public String getExpression() {
        return getExpressions().get(0);
    }

    public long getMaxTrainingSize() {
        return this.maxTrainingSize;
    }

    @NonNull
    public DistanceMetric getMetric() {
        return this.metric;
    }

    public long getMinTrainingSize() {
        return this.minTrainingSize;
    }

    public long getNumProbes() {
        return this.numProbes;
    }

    public boolean isLazy() {
        return this.isLazy;
    }

    @NonNull
    public VectorIndexConfiguration setEncoding(@NonNull VectorEncoding vectorEncoding) {
        this.encoding = (VectorEncoding) Preconditions.assertNotNull(vectorEncoding, "encoding");
        return this;
    }

    @NonNull
    public VectorIndexConfiguration setLazy(boolean z) {
        this.isLazy = z;
        return this;
    }

    @NonNull
    public VectorIndexConfiguration setMaxTrainingSize(long j) {
        this.maxTrainingSize = Preconditions.assertUInt32(j, "max training size");
        return this;
    }

    @NonNull
    public VectorIndexConfiguration setMetric(@NonNull DistanceMetric distanceMetric) {
        this.metric = (DistanceMetric) Preconditions.assertNotNull(distanceMetric, "metric");
        return this;
    }

    @NonNull
    public VectorIndexConfiguration setMinTrainingSize(long j) {
        this.minTrainingSize = Preconditions.assertUInt32(j, "min training size");
        return this;
    }

    @NonNull
    public VectorIndexConfiguration setNumProbes(long j) {
        this.numProbes = Preconditions.assertUInt32(j, "num probes");
        return this;
    }

    @NonNull
    public String toString() {
        return "VectorIndexConfiguration{" + this.numDimensions + ", " + this.numCentroids + ", " + this.encoding + ", " + this.metric + ", " + this.isLazy + ", " + this.minTrainingSize + ", " + this.maxTrainingSize + ", " + this.numProbes + ", " + this.isLazy + '}';
    }
}
