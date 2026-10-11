package com.onyx.android.sdk.reader.cbox.utils;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.reader.cbox.page.CBoxDataOnScreen;
import com.onyx.android.sdk.reader.cbox.utils.LinkInfoUtils;
import com.onyx.engine.sdk.LinkInfo;
import com.onyx.engine.sdk.LinkType;
import com.onyx.engine.sdk.NeoBaseNative;
import com.onyx.engine.sdk.WritingMode;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ&\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00070\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001c\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002J\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0002J\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\u0013\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0003H\u0002¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils;", "", "", "Lcom/onyx/engine/sdk/LinkInfo;", "list", "", "Lcom/onyx/engine/sdk/LinkType;", "", "splitLinkInfoByType", "Lcom/onyx/engine/sdk/NeoBaseNative;", "neoNative", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;", "links", "", "updateInternalNormalLinkInfo", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;", "imageList", "getImageFootnoteLinks", "filterInvalidLink", C6998g.f39679a, "link", C6997f.f39671c, "linkInfo", "", "c", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLinkInfoUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkInfoUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n766#2:106\n857#2,2:107\n1855#2,2:109\n766#2:111\n857#2,2:112\n1855#2,2:114\n766#2:116\n857#2,2:117\n1855#2,2:119\n*S KotlinDebug\n*F\n+ 1 LinkInfoUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/LinkInfoUtils\n*L\n39#1:106\n39#1:107,2\n40#1:109,2\n49#1:111\n49#1:112,2\n50#1:114,2\n73#1:116\n73#1:117,2\n74#1:119,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LinkInfoUtils {

    @NotNull
    public static final LinkInfoUtils INSTANCE = new LinkInfoUtils();

    /* renamed from: d */
    public static final List m34685d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: e */
    public static final List m34686e(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: c */
    public final boolean m34687c(LinkInfo linkInfo) {
        return StringKt.isNotBlank(linkInfo.getAnchor()) || StringKt.isNotBlank(linkInfo.getHref());
    }

    /* renamed from: f */
    public final void m34688f(CBoxDataOnScreen.PieceOfLink link) {
        if (link.getLinkInfo().isInvalidTarget()) {
            return;
        }
        link.m72335setTargetText(link.getLinkInfo().getTarget().getText());
        LinkType linkType = link.getLinkInfo().getTarget().getLinkType();
        Intrinsics.checkNotNullExpressionValue(linkType, "getLinkType(...)");
        link.m72334setLinkType(linkType);
    }

    @NotNull
    public final List<LinkInfo> filterInvalidLink(@NotNull List<? extends LinkInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        if (list.isEmpty()) {
            return arrayList;
        }
        for (LinkInfo linkInfo : list) {
            if (m34687c(linkInfo)) {
                arrayList.add(linkInfo);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public final void m34689g(List<CBoxDataOnScreen.PieceOfLink> links) {
        Iterator<CBoxDataOnScreen.PieceOfLink> it2 = links.iterator();
        while (it2.hasNext()) {
            m34688f(it2.next());
        }
    }

    @NotNull
    public final List<CBoxDataOnScreen.PieceOfLink> getImageFootnoteLinks(@NotNull NeoBaseNative neoNative, @NotNull List<CBoxDataOnScreen.PieceOfImage> imageList) {
        List<CBoxDataOnScreen.PieceOfLink> emptyList;
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        Intrinsics.checkNotNullParameter(imageList, "imageList");
        if (imageList.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<CBoxDataOnScreen.PieceOfImage> arrayList2 = new ArrayList();
        for (Object obj : imageList) {
            CBoxDataOnScreen.PieceOfImage pieceOfImage = (CBoxDataOnScreen.PieceOfImage) obj;
            if (!pieceOfImage.getImageInfo().isLink() && StringKt.isNotBlank(pieceOfImage.getImageInfo().getFootNote())) {
                arrayList2.add(obj);
            }
        }
        for (CBoxDataOnScreen.PieceOfImage pieceOfImage2 : arrayList2) {
            LinkInfo linkInfo = new LinkInfo();
            linkInfo.setXpath(pieceOfImage2.getImageInfo().getXpath());
            linkInfo.setRect(pieceOfImage2.getImageInfo().getRect());
            linkInfo.setPosition(pieceOfImage2.getImageInfo().getPosition().copy());
            linkInfo.setWritingMode(WritingMode.HORIZONTAL);
            CBoxDataOnScreen.PieceOfLink pieceOfLink = new CBoxDataOnScreen.PieceOfLink(linkInfo, null, 2, null);
            pieceOfLink.m72335setTargetText(pieceOfImage2.getImageInfo().getFootNote());
            pieceOfLink.m72334setLinkType(LinkType.NORMAL_POSITION);
            arrayList.add(pieceOfLink);
        }
        return arrayList;
    }

    @NotNull
    public final Map<LinkType, List<LinkInfo>> splitLinkInfoByType(@NotNull List<? extends LinkInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        HashMap hashMap = new HashMap();
        for (LinkInfo linkInfo : list) {
            if (UriUtils.INSTANCE.isWebsiteUri(linkInfo.getHref())) {
                LinkType linkType = LinkType.WEBSITE;
                final LinkInfoUtils$splitLinkInfoByType$1 linkInfoUtils$splitLinkInfoByType$1 = new Function1<LinkType, List<LinkInfo>>() { // from class: com.onyx.android.sdk.reader.cbox.utils.LinkInfoUtils$splitLinkInfoByType$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final List<LinkInfo> invoke(@NotNull LinkType it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return new ArrayList();
                    }
                };
                ((List) hashMap.computeIfAbsent(linkType, new Function() { // from class: com.sunia.HTREnginev2.zyi
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        List m34685d;
                        m34685d = LinkInfoUtils.m34685d(Function1.this, obj);
                        return m34685d;
                    }
                })).add(linkInfo);
            } else {
                LinkType linkType2 = LinkType.NOT_LOADED;
                final LinkInfoUtils$splitLinkInfoByType$2 linkInfoUtils$splitLinkInfoByType$2 = new Function1<LinkType, List<LinkInfo>>() { // from class: com.onyx.android.sdk.reader.cbox.utils.LinkInfoUtils$splitLinkInfoByType$2
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final List<LinkInfo> invoke(@NotNull LinkType it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return new ArrayList();
                    }
                };
                ((List) hashMap.computeIfAbsent(linkType2, new Function() { // from class: com.sunia.HTREnginev2.azi
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        List m34686e;
                        m34686e = LinkInfoUtils.m34686e(Function1.this, obj);
                        return m34686e;
                    }
                })).add(linkInfo);
            }
        }
        return hashMap;
    }

    public final void updateInternalNormalLinkInfo(@NotNull NeoBaseNative neoNative, @NotNull List<CBoxDataOnScreen.PieceOfLink> links) throws Exception {
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        Intrinsics.checkNotNullParameter(links, "links");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = links.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((CBoxDataOnScreen.PieceOfLink) next).getLinkType() == LinkType.NOT_LOADED) {
                arrayList2.add(next);
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList.add(((CBoxDataOnScreen.PieceOfLink) it3.next()).getLinkInfo());
        }
        if (links.isEmpty()) {
            return;
        }
        if (neoNative.getLinkTarget(arrayList)) {
            m34689g(links);
        } else {
            Debug.INSTANCE.m32044e(LinkInfoUtils.class, "get link target failed", new Object[0]);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : links) {
            if (((CBoxDataOnScreen.PieceOfLink) obj).getLinkType() == LinkType.NOT_LOADED) {
                arrayList3.add(obj);
            }
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            ((CBoxDataOnScreen.PieceOfLink) it4.next()).m72334setLinkType(LinkType.NORMAL_POSITION);
        }
    }
}
