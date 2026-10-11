package com.onyx.android.sdk.textbox.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.data.font.FontType;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.textbox.action.LoadRichTextFontAction;
import com.onyx.android.sdk.textbox.richtext.RichTextFont;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.collections4.Transformer;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u0002¢\u0006\u0004\b\u0015\u0010\u0013J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0004\u0012\u00020\u00030\u0007H\u0002R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR(\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "q", "", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;", "e", "Ljava/util/List;", "textFontList", "", C6997f.f39671c, "getFontDirs", "()Ljava/util/List;", "setFontDirs", "(Ljava/util/List;)V", "fontDirs", Constants.CONSTRUCTOR_NAME, "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadRichTextFontAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadRichTextFontAction.kt\ncom/onyx/android/sdk/textbox/action/LoadRichTextFontAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n766#2:53\n857#2,2:54\n1549#2:56\n1620#2,3:57\n766#2:60\n857#2,2:61\n*S KotlinDebug\n*F\n+ 1 LoadRichTextFontAction.kt\ncom/onyx/android/sdk/textbox/action/LoadRichTextFontAction\n*L\n36#1:53\n36#1:54,2\n37#1:56\n37#1:57,3\n38#1:60\n38#1:61,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadRichTextFontAction extends RxBaseAction<List<? extends FontInfo>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<RichTextFont> textFontList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<String> fontDirs;

    /* renamed from: com.onyx.android.sdk.textbox.action.LoadRichTextFontAction$a */
    /* loaded from: classes8.dex */
    public static final class C8007a<T, R> implements Function {
        public C8007a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<FontInfo> apply(@NotNull LoadRichTextFontAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadRichTextFontAction.this.m36076q();
        }
    }

    public LoadRichTextFontAction(@NotNull List<RichTextFont> textFontList) {
        List<String> mutableListOf;
        Intrinsics.checkNotNullParameter(textFontList, "textFontList");
        this.textFontList = textFontList;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(AppPaths.INSTANCE.appFontDir().toAbsolutePath().toString());
        this.fontDirs = mutableListOf;
    }

    /* renamed from: o */
    public static final String m36073o(FontInfo fontInfo) {
        return fontInfo.getName();
    }

    /* renamed from: p */
    public static final String m36074p(FontInfo fontInfo) {
        return fontInfo.getFileBaseName();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends FontInfo>> create() {
        Observable<List<? extends FontInfo>> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C8007a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<String> getFontDirs() {
        return this.fontDirs;
    }

    /* renamed from: n */
    public final Map<String, FontInfo> m36075n() {
        List<String> list;
        FontUtils fontUtils = FontUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(this.fontDirs);
        List<FontInfo> buildFontItemAdapter = fontUtils.buildFontItemAdapter(list, null, null, FontType.ALL);
        HashMap hashMap = new HashMap();
        List<FontInfo> list2 = buildFontItemAdapter;
        MapUtils.populateMap(hashMap, list2, new Transformer() { // from class: com.sunia.HTREnginev2.c0j
            @Override // org.apache.commons.collections4.Transformer
            public final Object transform(Object obj) {
                String m36073o;
                m36073o = LoadRichTextFontAction.m36073o((FontInfo) obj);
                return m36073o;
            }
        });
        MapUtils.populateMap(hashMap, list2, new Transformer() { // from class: com.sunia.HTREnginev2.d0j
            @Override // org.apache.commons.collections4.Transformer
            public final Object transform(Object obj) {
                String m36074p;
                m36074p = LoadRichTextFontAction.m36074p((FontInfo) obj);
                return m36074p;
            }
        });
        return hashMap;
    }

    /* renamed from: q */
    public final List<FontInfo> m36076q() {
        int collectionSizeOrDefault;
        List<FontInfo> list;
        Map<String, FontInfo> m36075n = m36075n();
        List<RichTextFont> list2 = this.textFontList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (m36075n.containsKey(((RichTextFont) obj).getFontFamily())) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            FontInfo fontInfo = m36075n.get(((RichTextFont) it2.next()).getFontFamily());
            Intrinsics.checkNotNull(fontInfo);
            arrayList2.add(fontInfo);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (StringUtils.isNotBlank(((FontInfo) obj2).getFilePath())) {
                arrayList3.add(obj2);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList3);
        return list;
    }

    public final void setFontDirs(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.fontDirs = list;
    }
}
