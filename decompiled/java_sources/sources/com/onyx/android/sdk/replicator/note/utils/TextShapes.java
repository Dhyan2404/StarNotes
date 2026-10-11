package com.onyx.android.sdk.replicator.note.utils;

import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\u0010\f\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/TextShapes;", "", "()V", "SHAPE_EDIT_TEXT_SHAPE", "", "SHAPE_HWR_TEXT_SHAPE", "parseHwrTextShapeFontList", "", "", "model", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "parseTextShapeFontList", "text", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTextShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapes.kt\ncom/onyx/android/sdk/replicator/note/utils/TextShapes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,64:1\n731#2,9:65\n731#2,9:76\n1549#2:110\n1620#2,3:111\n37#3,2:74\n37#3,2:85\n107#4:87\n79#4,22:88\n*S KotlinDebug\n*F\n+ 1 TextShapes.kt\ncom/onyx/android/sdk/replicator/note/utils/TextShapes\n*L\n43#1:65,9\n44#1:76,9\n59#1:110\n59#1:111,3\n44#1:74,2\n45#1:85,2\n45#1:87\n45#1:88,22\n*E\n"})
/* loaded from: classes8.dex */
public final class TextShapes {

    @NotNull
    public static final TextShapes INSTANCE = new TextShapes();
    public static final int SHAPE_EDIT_TEXT_SHAPE = 16;
    public static final int SHAPE_HWR_TEXT_SHAPE = 48;

    @NotNull
    public final List<String> parseHwrTextShapeFontList(@NotNull ShapeModel model) {
        List<String> emptyList;
        String fontFace;
        List<String> emptyList2;
        Intrinsics.checkNotNullParameter(model, "model");
        if (model.getShapeType() != 48) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        ShapeTextStyle textStyle = model.getTextStyle();
        if (textStyle != null && (fontFace = textStyle.getFontFace()) != null) {
            return CollectionKt.asList(FilenameUtils.getBaseName(fontFace));
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @NotNull
    public final List<String> parseTextShapeFontList(@NotNull ShapeModel model) {
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(model, "model");
        if (model.getShapeType() != 16) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return parseTextShapeFontList(model.getRichText());
    }

    @NotNull
    public final List<String> parseTextShapeFontList(@Nullable String text) {
        boolean contains$default;
        boolean equals;
        int collectionSizeOrDefault;
        String replace$default;
        CharSequence trim;
        List emptyList;
        List emptyList2;
        List<String> emptyList3;
        if (text == null) {
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList3;
        }
        ArrayList arrayList = new ArrayList();
        Document parse = Jsoup.parse(text);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
        Elements elementsContainingOwnText = parse.getElementsContainingOwnText("");
        Intrinsics.checkNotNullExpressionValue(elementsContainingOwnText, "getElementsContainingOwnText(...)");
        Iterator<Element> it2 = elementsContainingOwnText.iterator();
        while (it2.hasNext()) {
            Element next = it2.next();
            ArrayList arrayList2 = new ArrayList();
            String attr = next.attr("style");
            Intrinsics.checkNotNullExpressionValue(attr, "attr(...)");
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) attr, (CharSequence) "font-family:", false, 2, (Object) null);
            if (contains$default) {
                List<String> split = new Regex("font-family:").split(attr, 0);
                if (!split.isEmpty()) {
                    ListIterator<String> listIterator = split.listIterator(split.size());
                    while (listIterator.hasPrevious()) {
                        if (!(listIterator.previous().length() == 0)) {
                            emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                List<String> split2 = new Regex(AndroidTreeView.f47214k).split(((String[]) emptyList.toArray(new String[0]))[1], 0);
                if (!split2.isEmpty()) {
                    ListIterator<String> listIterator2 = split2.listIterator(split2.size());
                    while (listIterator2.hasPrevious()) {
                        if (!(listIterator2.previous().length() == 0)) {
                            emptyList2 = CollectionsKt___CollectionsKt.take(split2, listIterator2.nextIndex() + 1);
                            break;
                        }
                    }
                }
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                String str = ((String[]) emptyList2.toArray(new String[0]))[0];
                int length = str.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i++;
                    } else {
                        z = true;
                    }
                }
                String obj = str.subSequence(i, length + 1).toString();
                if (obj.length() > 0) {
                    CollectionKt.addIfNotContains(arrayList2, obj);
                }
            }
            equals = StringsKt__StringsJVMKt.equals(next.tagName(), "font", true);
            if (equals) {
                String attr2 = next.attr(OptionalModuleUtils.FACE);
                Intrinsics.checkNotNullExpressionValue(attr2, "attr(...)");
                trim = StringsKt__StringsKt.trim((CharSequence) attr2);
                String obj2 = trim.toString();
                if (obj2.length() > 0) {
                    CollectionKt.addIfNotContains(arrayList2, obj2);
                }
            }
            arrayList.addAll(arrayList2);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                replace$default = StringsKt__StringsJVMKt.replace$default((String) it3.next(), "\\ ", "", false, 4, (Object) null);
                arrayList3.add(replace$default);
            }
            CollectionKt.addIfNotContains((Collection) arrayList, (Collection) arrayList3);
        }
        return arrayList;
    }
}
