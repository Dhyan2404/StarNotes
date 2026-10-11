package com.onyx.android.sdk.universal.pdf.utils;

import com.alibaba.fastjson2.JSONObject;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.GeoLayoutChildParams;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.genericshape.GeoLayoutMarginGeometry;
import com.onyx.android.sdk.neopdf.NeoPdf;
import java.io.File;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin;", "", "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PdfGeoLayoutMargin {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion;", "", "()V", "loadFromFileOrDefault", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "file", "Ljava/io/File;", CouchFieldKey.KEY_TOC_PAGE_ID, "", "pdfNative", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPdfGeoLayoutMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfGeoLayoutMargin.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2:47\n1855#2,2:48\n1856#2:50\n*S KotlinDebug\n*F\n+ 1 PdfGeoLayoutMargin.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion\n*L\n33#1:47\n34#1:48,2\n33#1:50\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GeoLayoutMargin loadFromFileOrDefault(@Nullable File file, @NotNull String pageId, @NotNull NeoPdf pdfNative) {
            GeoLayoutMargin geoLayoutMargin;
            Intrinsics.checkNotNullParameter(pageId, "pageId");
            Intrinsics.checkNotNullParameter(pdfNative, "pdfNative");
            if (file == null || !file.exists() || file.isDirectory()) {
                geoLayoutMargin = new GeoLayoutMargin();
            } else {
                try {
                    geoLayoutMargin = (GeoLayoutMargin) JSONObject.parseObject(FileUtils.INSTANCE.readContentOfFile(file.getAbsolutePath()), GeoLayoutMargin.class);
                } catch (Exception e) {
                    Debug.INSTANCE.m32048e(e);
                    geoLayoutMargin = new GeoLayoutMargin();
                }
            }
            Iterator<T> it2 = geoLayoutMargin.getGeometries().iterator();
            while (it2.hasNext()) {
                Iterator<T> it3 = ((GeoLayoutMarginGeometry) it2.next()).getGeometries().iterator();
                while (it3.hasNext()) {
                    GeoLayout geoLayout = ((GeoLayoutChildParams) it3.next()).getGeoLayout();
                    if (geoLayout != null) {
                        PdfGeoLayoutDrawer pdfGeoLayoutDrawer = new PdfGeoLayoutDrawer(geoLayout);
                        pdfGeoLayoutDrawer.setPageId(pageId);
                        pdfGeoLayoutDrawer.setPdfNative(pdfNative);
                        geoLayout.setGeoLayoutDrawer(pdfGeoLayoutDrawer);
                    }
                }
            }
            Intrinsics.checkNotNull(geoLayoutMargin);
            return geoLayoutMargin;
        }

        public Companion() {
        }
    }
}
