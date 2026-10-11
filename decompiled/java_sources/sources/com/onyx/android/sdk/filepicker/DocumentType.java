package com.onyx.android.sdk.filepicker;

import androidx.annotation.DrawableRes;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB)\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\n\u0012\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/DocumentType;", "", "", "a", Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "title", "", "b", "[Ljava/lang/String;", "getExtensions", "()[Ljava/lang/String;", "setExtensions", "([Ljava/lang/String;)V", "extensions", "", "c", Constants.INTEGER_SIG, "getDrawableRes", "()Ljava/lang/Integer;", "setDrawableRes", "(Ljava/lang/Integer;)V", "drawableRes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V", "Companion", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DocumentType {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String title;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String[] extensions;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Integer drawableRes;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\nJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\nJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\nJ\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\nJ\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;", "", "()V", "allDocumentExtension", "", "", "getDocumentTypeByName", "Lcom/onyx/android/sdk/filepicker/DocumentType;", "documentName", "ofDoc", "", "ofFont", "onlyNote", "onlyPdf", "partDocumentExtension", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nDocumentType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocumentType.kt\ncom/onyx/android/sdk/filepicker/DocumentType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n37#3,2:82\n*S KotlinDebug\n*F\n+ 1 DocumentType.kt\ncom/onyx/android/sdk/filepicker/DocumentType$Companion\n*L\n15#1:78\n15#1:79,3\n63#1:82,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<String> allDocumentExtension() {
            List<String> partDocumentExtension = partDocumentExtension();
            List<String> list = partDocumentExtension;
            ResManager resManager = ResManager.INSTANCE;
            CollectionsKt__MutableCollectionsKt.addAll(list, resManager.getStringArray(C7453R.array.doc_txt));
            CollectionsKt__MutableCollectionsKt.addAll(list, resManager.getStringArray(C7453R.array.doc_note));
            return partDocumentExtension;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000f. Please report as an issue. */
        @NotNull
        public final DocumentType getDocumentTypeByName(@NotNull String documentName) {
            Intrinsics.checkNotNullParameter(documentName, "documentName");
            List<String> allDocumentExtension = allDocumentExtension();
            switch (documentName.hashCode()) {
                case 64897:
                    if (documentName.equals("ALL")) {
                        return new DocumentType("ALL", (String[]) allDocumentExtension.toArray(new String[0]), null);
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 98252:
                    if (documentName.equals(PickerFileConst.CAJ)) {
                        return new DocumentType(PickerFileConst.CAJ, ResManager.INSTANCE.getStringArray(C7453R.array.doc_caj), Integer.valueOf(C7453R.drawable.ic_file_type_caj));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 110834:
                    if (documentName.equals("pdf")) {
                        return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 111220:
                    if (documentName.equals("ppt")) {
                        return new DocumentType("ppt", ResManager.INSTANCE.getStringArray(C7453R.array.doc_ppt), Integer.valueOf(C7453R.drawable.ic_file_type_ppt));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 115174:
                    if (documentName.equals("ttf")) {
                        return new DocumentType("ttf", ResManager.INSTANCE.getStringArray(C7453R.array.font_ttf), Integer.valueOf(C7453R.drawable.ic_gif));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 115312:
                    if (documentName.equals("txt")) {
                        return new DocumentType("txt", ResManager.INSTANCE.getStringArray(C7453R.array.doc_txt), Integer.valueOf(C7453R.drawable.ic_file_type_text));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 3120248:
                    if (documentName.equals("epub")) {
                        return new DocumentType("epub", ResManager.INSTANCE.getStringArray(C7453R.array.doc_epub), Integer.valueOf(C7453R.drawable.ic_file_type_pube));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 3357033:
                    if (documentName.equals("mobi")) {
                        return new DocumentType("mobi", ResManager.INSTANCE.getStringArray(C7453R.array.doc_mobi), Integer.valueOf(C7453R.drawable.ic_file_type_mobi));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 3387378:
                    if (documentName.equals("note")) {
                        return new DocumentType("note", ResManager.INSTANCE.getStringArray(C7453R.array.doc_note), Integer.valueOf(C7453R.drawable.ic_file_type_note));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                case 796815543:
                    if (documentName.equals(PickerFileConst.WORD)) {
                        return new DocumentType(PickerFileConst.WORD, ResManager.INSTANCE.getStringArray(C7453R.array.doc_word), Integer.valueOf(C7453R.drawable.ic_file_type_word));
                    }
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
                default:
                    return new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf));
            }
        }

        @NotNull
        public final List<DocumentType> ofDoc() {
            int collectionSizeOrDefault;
            List<String> supportDocumentType = FilePickerUtils.INSTANCE.getSupportDocumentType();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportDocumentType, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = supportDocumentType.iterator();
            while (it2.hasNext()) {
                arrayList.add(DocumentType.INSTANCE.getDocumentTypeByName((String) it2.next()));
            }
            return arrayList;
        }

        @NotNull
        public final List<DocumentType> ofFont() {
            ArrayList arrayList = new ArrayList();
            ResManager resManager = ResManager.INSTANCE;
            arrayList.add(new DocumentType("ALL", resManager.getStringArray(C7453R.array.font_all), null));
            arrayList.add(new DocumentType("ttf", resManager.getStringArray(C7453R.array.font_ttf), Integer.valueOf(C7453R.drawable.ic_gif)));
            return arrayList;
        }

        @NotNull
        public final List<DocumentType> onlyNote() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new DocumentType("note", ResManager.INSTANCE.getStringArray(C7453R.array.doc_note), Integer.valueOf(C7453R.drawable.ic_file_type_note)));
            return arrayList;
        }

        @NotNull
        public final List<DocumentType> onlyPdf() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new DocumentType("pdf", ResManager.INSTANCE.getStringArray(C7453R.array.doc_pdf), Integer.valueOf(C7453R.drawable.ic_file_type_pdf)));
            return arrayList;
        }

        @NotNull
        public final List<String> partDocumentExtension() {
            ArrayList arrayList = new ArrayList();
            ResManager resManager = ResManager.INSTANCE;
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_pdf));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_ppt));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_word));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_caj));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_epub));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_mobi));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_fb2));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_html));
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, resManager.getStringArray(C7453R.array.doc_bin));
            return arrayList;
        }

        public Companion() {
        }
    }

    public DocumentType(@NotNull String title, @NotNull String[] extensions, @DrawableRes @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(extensions, "extensions");
        this.title = title;
        this.extensions = extensions;
        this.drawableRes = num;
    }

    @Nullable
    public final Integer getDrawableRes() {
        return this.drawableRes;
    }

    @NotNull
    public final String[] getExtensions() {
        return this.extensions;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setDrawableRes(@Nullable Integer num) {
        this.drawableRes = num;
    }

    public final void setExtensions(@NotNull String[] strArr) {
        Intrinsics.checkNotNullParameter(strArr, "<set-?>");
        this.extensions = strArr;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }
}
