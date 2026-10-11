package com.onyx.android.sdk.cloudstorage.common.utils;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.CloudNoteBook;
import com.onyx.android.sdk.cloudstorage.model.CloudResource;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\f\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\u0010\n\u001a\u0004\u0018\u00010\bJ\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bJ\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u0012\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000f\u001a\u00020\u0004J\u0010\u0010\u0014\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0015\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004R\u0014\u0010\u0018\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001c\u0010!\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "", "getNotePdfPath", "getNotePath", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "noteBooks", "noteBook", "", "addNoteBookList", "book", "getRootNoteBook", "originalTitle", "getNoteTitle", "getNotePdfTitle", "getOneNoteTitle", "title", "getOneNotePageTitleFilter", "removeTitleInvalidCharacters", "a", Constants.STRING_SIG, "CLOUD_NOTE_TITLE_SPLITE_CHAR", "", "b", "I", "ONE_NOTE_TITLE_LIMIT_LENGTH", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "c", "Ljava/util/regex/Pattern;", "CLOUD_NOTE_TITLE_PATTERN", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudNoteUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudNoteUtils.kt\ncom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1855#2,2:123\n1549#2:126\n1620#2,3:127\n1#3:125\n*S KotlinDebug\n*F\n+ 1 CloudNoteUtils.kt\ncom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils\n*L\n40#1:123,2\n101#1:126\n101#1:127,3\n*E\n"})
/* loaded from: classes7.dex */
public final class CloudNoteUtils {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String CLOUD_NOTE_TITLE_SPLITE_CHAR = "_";

    /* renamed from: b, reason: from kotlin metadata */
    public static final int ONE_NOTE_TITLE_LIMIT_LENGTH = 50;

    @NotNull
    public static final CloudNoteUtils INSTANCE = new CloudNoteUtils();

    /* renamed from: c, reason: from kotlin metadata */
    public static final Pattern CLOUD_NOTE_TITLE_PATTERN = Pattern.compile("[?*\\\\/:<>|&#''%~]");

    public final void addNoteBookList(@NotNull List<CloudNoteBook> noteBooks, @Nullable CloudNoteBook noteBook) {
        Intrinsics.checkNotNullParameter(noteBooks, "noteBooks");
        if (noteBook == null) {
            return;
        }
        noteBooks.add(0, noteBook);
        if (noteBook.getParent() != null) {
            addNoteBookList(noteBooks, noteBook.getParent());
        }
    }

    @NotNull
    public final String getNotePath(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        ArrayList<CloudNoteBook> arrayList = new ArrayList();
        addNoteBookList(arrayList, cloudNote.getNoteBook());
        StringBuilder sb = new StringBuilder();
        for (CloudNoteBook cloudNoteBook : arrayList) {
            sb.append(File.separator);
            sb.append(cloudNoteBook.getTitle());
        }
        sb.append(File.separator);
        String title = cloudNote.getTitle();
        sb.append(title != null ? FileUtils.INSTANCE.filterFileName(title) : null);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String getNotePdfPath(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        CloudResource resource = cloudNote.getResource();
        String extension = FilenameUtils.getExtension(resource != null ? resource.getPdfPath() : null);
        if (StringUtils.isEmpty(extension)) {
            extension = "pdf";
        }
        String concat = FilenameUtils.concat(getNotePath(cloudNote), extension);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
        return concat;
    }

    @NotNull
    public final String getNotePdfTitle(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        StringBuilder sb = new StringBuilder();
        sb.append(cloudNote.getTitle());
        sb.append('-');
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        sb.append(dateTimeUtil.formatDate(new Date(), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HH_MM()));
        sb.append(CloudStorageConstants.PDF_FILE_SUFFIX);
        return sb.toString();
    }

    @NotNull
    public final String getNoteTitle(@NotNull CloudNoteBook noteBook, @NotNull String originalTitle) {
        Intrinsics.checkNotNullParameter(noteBook, "noteBook");
        Intrinsics.checkNotNullParameter(originalTitle, "originalTitle");
        ArrayList arrayList = new ArrayList();
        addNoteBookList(arrayList, noteBook);
        StringBuilder sb = new StringBuilder(originalTitle);
        if (arrayList.size() <= 1) {
            return originalTitle;
        }
        sb.append(MotionUtils.f31761c);
        int size = arrayList.size();
        for (int i = 1; i < size; i++) {
            sb.append(arrayList.get(i).getTitle());
            sb.append("_");
        }
        int length = sb.length();
        sb.replace(length - 1, length, MotionUtils.f31762d);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String getOneNotePageTitleFilter(@Nullable String title) {
        return "startswith(title,'" + title + "')";
    }

    @NotNull
    public final String getOneNoteTitle(@Nullable CloudNoteBook noteBook, @NotNull String originalTitle) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(originalTitle, "originalTitle");
        ArrayList arrayList = new ArrayList();
        addNoteBookList(arrayList, noteBook);
        if (arrayList.size() > 1) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((CloudNoteBook) it2.next()).getTitle());
            }
            originalTitle = StringUtils.join(arrayList2, "_");
            Intrinsics.checkNotNullExpressionValue(originalTitle, "join(...)");
        }
        if (originalTitle.length() <= 50) {
            return originalTitle;
        }
        String substring = originalTitle.substring(0, 50);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public final CloudNoteBook getRootNoteBook(@NotNull CloudNoteBook book) {
        Intrinsics.checkNotNullParameter(book, "book");
        if (book.getParent() == null) {
            return book;
        }
        CloudNoteBook parent = book.getParent();
        Intrinsics.checkNotNull(parent);
        return getRootNoteBook(parent);
    }

    @NotNull
    public final String removeTitleInvalidCharacters(@Nullable String title) {
        if (title == null || title.length() == 0) {
            return "";
        }
        String replaceAll = CLOUD_NOTE_TITLE_PATTERN.matcher(title).replaceAll("");
        Intrinsics.checkNotNullExpressionValue(replaceAll, "replaceAll(...)");
        return replaceAll;
    }
}
