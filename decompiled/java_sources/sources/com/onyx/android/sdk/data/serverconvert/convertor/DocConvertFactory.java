package com.onyx.android.sdk.data.serverconvert.convertor;

import androidx.transition.Transition;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\fR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;", "", "()V", "cosConvertor", "Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;", "ossConvertor", "Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;", "ensureDocConvert", "Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;", "type", "Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;", "initConvertor", "", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "releaseAll", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocConvertFactory {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final DocConvertFactory instance = new DocConvertFactory();

    @Nullable
    private TencentDocConvertor cosConvertor;

    @Nullable
    private AliDocConvertor ossConvertor;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;", "", "()V", Transition.f10626J0, "Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;", "getInstance", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DocConvertFactory getInstance() {
            return DocConvertFactory.instance;
        }

        private Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ConvertType.values().length];
            try {
                iArr[ConvertType.COS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConvertType.OSS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final IDocConvertor ensureDocConvert(@NotNull ConvertType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            TencentDocConvertor tencentDocConvertor = this.cosConvertor;
            Intrinsics.checkNotNull(tencentDocConvertor);
            return tencentDocConvertor;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        AliDocConvertor aliDocConvertor = this.ossConvertor;
        Intrinsics.checkNotNull(aliDocConvertor);
        return aliDocConvertor;
    }

    public final void initConvertor(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        if (this.cosConvertor == null) {
            this.cosConvertor = new TencentDocConvertor(clusterInfo);
        }
        if (this.ossConvertor == null) {
            this.ossConvertor = new AliDocConvertor(clusterInfo);
        }
    }

    public final void releaseAll() {
        TencentDocConvertor tencentDocConvertor = this.cosConvertor;
        if (tencentDocConvertor != null) {
            tencentDocConvertor.release();
        }
        AliDocConvertor aliDocConvertor = this.ossConvertor;
        if (aliDocConvertor != null) {
            aliDocConvertor.release();
        }
        this.cosConvertor = null;
        this.ossConvertor = null;
    }
}
