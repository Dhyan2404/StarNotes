package com.onyx.android.sdk.geometry.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "", "rowIndex", "", "columnIndex", "(II)V", "getColumnIndex", "()I", "getRowIndex", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class BoxCellInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String EMPTY_KEY = "0-0";
    private final int columnIndex;
    private final int rowIndex;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0005\u001a\u00020\u0004*\u0004\u0018\u00010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;", "", "()V", "EMPTY_KEY", "", "key", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String key(@Nullable BoxCellInfo boxCellInfo) {
            if (boxCellInfo == null) {
                return BoxCellInfo.EMPTY_KEY;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(boxCellInfo.getRowIndex());
            sb.append('-');
            sb.append(boxCellInfo.getColumnIndex());
            return sb.toString();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BoxCellInfo() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.data.BoxCellInfo.<init>():void");
    }

    public static /* synthetic */ BoxCellInfo copy$default(BoxCellInfo boxCellInfo, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = boxCellInfo.rowIndex;
        }
        if ((i3 & 2) != 0) {
            i2 = boxCellInfo.columnIndex;
        }
        return boxCellInfo.copy(i, i2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getRowIndex() {
        return this.rowIndex;
    }

    /* renamed from: component2, reason: from getter */
    public final int getColumnIndex() {
        return this.columnIndex;
    }

    @NotNull
    public final BoxCellInfo copy(int rowIndex, int columnIndex) {
        return new BoxCellInfo(rowIndex, columnIndex);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BoxCellInfo)) {
            return false;
        }
        BoxCellInfo boxCellInfo = (BoxCellInfo) other;
        return this.rowIndex == boxCellInfo.rowIndex && this.columnIndex == boxCellInfo.columnIndex;
    }

    public final int getColumnIndex() {
        return this.columnIndex;
    }

    public final int getRowIndex() {
        return this.rowIndex;
    }

    public int hashCode() {
        return (Integer.hashCode(this.rowIndex) * 31) + Integer.hashCode(this.columnIndex);
    }

    @NotNull
    public String toString() {
        return "BoxCellInfo(rowIndex=" + this.rowIndex + ", columnIndex=" + this.columnIndex + ')';
    }

    public BoxCellInfo(int i, int i2) {
        this.rowIndex = i;
        this.columnIndex = i2;
    }

    public /* synthetic */ BoxCellInfo(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }
}
