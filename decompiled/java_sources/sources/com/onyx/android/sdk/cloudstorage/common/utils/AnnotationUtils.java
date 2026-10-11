package com.onyx.android.sdk.cloudstorage.common.utils;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotationBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.StringEscapeUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0002R\u001c\u0010\u0011\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0010R\u001c\u0010\u0012\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/utils/AnnotationUtils;", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "", "makeHtmlContent", "annotationContentXMLEscape", "getAnnotationBodyContent", "content", "c", "inStr", "b", "v", "a", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "Ljava/util/regex/Pattern;", "xmlCharacterPattern", "xmlNewlineCharacterPattern", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAnnotationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationUtils.kt\ncom/onyx/android/sdk/cloudstorage/common/utils/AnnotationUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n1855#2,2:133\n*S KotlinDebug\n*F\n+ 1 AnnotationUtils.kt\ncom/onyx/android/sdk/cloudstorage/common/utils/AnnotationUtils\n*L\n74#1:133,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AnnotationUtils {

    @NotNull
    public static final AnnotationUtils INSTANCE = new AnnotationUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final Pattern xmlCharacterPattern = Pattern.compile("[^\\u0009\\u000A\\u000D\\u0020-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFF]+");

    /* renamed from: b, reason: from kotlin metadata */
    public static final Pattern xmlNewlineCharacterPattern = Pattern.compile("\\u000D\\u000A|\\u000D|\\u000A");

    /* renamed from: a */
    public final String m32299a(String v) {
        return ((v == null || v.length() == 0) || StringUtils.equalsIgnoreCase(v, "null")) ? "" : v;
    }

    @NotNull
    public final CloudAnnotation annotationContentXMLEscape(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        CloudAnnotation clone = CloudAnnotation.INSTANCE.clone(cloudAnnotation);
        AnnotationUtils annotationUtils = INSTANCE;
        clone.setBookName(annotationUtils.m32301c(cloudAnnotation.getBookName()));
        clone.setAuthor(annotationUtils.m32301c(cloudAnnotation.getAuthor()));
        clone.setLink(annotationUtils.m32301c(cloudAnnotation.getLink()));
        if (CollectionKt.isNonBlank(clone.getContext())) {
            List<CloudAnnotationBean> context = clone.getContext();
            Intrinsics.checkNotNull(context);
            for (CloudAnnotationBean cloudAnnotationBean : context) {
                cloudAnnotationBean.setChapter(m32301c(cloudAnnotationBean.getChapter()));
                cloudAnnotationBean.setContent(m32301c(cloudAnnotationBean.getContent()));
                cloudAnnotationBean.setNote(m32301c(cloudAnnotationBean.getNote()));
            }
        }
        return clone;
    }

    /* renamed from: b */
    public final String m32300b(String inStr) {
        if (inStr == null || inStr.length() == 0) {
            return "";
        }
        String replaceAll = xmlNewlineCharacterPattern.matcher(inStr).replaceAll("<br/>");
        Intrinsics.checkNotNullExpressionValue(replaceAll, "replaceAll(...)");
        String replaceAll2 = xmlCharacterPattern.matcher(replaceAll).replaceAll("");
        Intrinsics.checkNotNullExpressionValue(replaceAll2, "replaceAll(...)");
        return replaceAll2;
    }

    /* renamed from: c */
    public final String m32301c(String content) {
        if (!StringKt.isNotBlank(content)) {
            return "";
        }
        String escapeXml10 = StringEscapeUtils.escapeXml10(content);
        Intrinsics.checkNotNullExpressionValue(escapeXml10, "escapeXml10(...)");
        return escapeXml10;
    }

    @NotNull
    public final String getAnnotationBodyContent(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        StringBuilder sb = new StringBuilder();
        ResManager resManager = ResManager.INSTANCE;
        sb.append(resManager.getString(C7153R.string.annotation_book_name_content, m32300b(cloudAnnotation.getBookName())));
        String m32299a = m32299a(cloudAnnotation.getAuthor());
        if (StringUtils.isNotBlank(m32299a)) {
            sb.append(resManager.getString(C7153R.string.annotation_author_content, m32300b(m32299a)));
        }
        List<CloudAnnotationBean> context = cloudAnnotation.getContext();
        if (context != null) {
            for (CloudAnnotationBean cloudAnnotationBean : context) {
                if (StringUtils.isNotBlank(cloudAnnotationBean.getChapter())) {
                    sb.append(ResManager.INSTANCE.getString(C7153R.string.annotation_charpter_content, INSTANCE.m32300b(cloudAnnotationBean.getChapter())));
                }
                ResManager resManager2 = ResManager.INSTANCE;
                int i = C7153R.string.annotation_time_content;
                AnnotationUtils annotationUtils = INSTANCE;
                sb.append(resManager2.getString(i, annotationUtils.m32300b(cloudAnnotationBean.getTime()), annotationUtils.m32300b(cloudAnnotationBean.getContent())));
                if (StringUtils.isNotBlank(cloudAnnotationBean.getNote())) {
                    sb.append(resManager2.getString(C7153R.string.annotation_note_content, annotationUtils.m32300b(cloudAnnotationBean.getNote())));
                }
            }
        }
        sb.append(ResManager.INSTANCE.getString(C7153R.string.annotation_bottom_content, m32300b(cloudAnnotation.getLink())));
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String makeHtmlContent(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        String format = String.format(Locale.getDefault(), CloudStorageConstants.ONE_NOTE_CONTENT, cloudAnnotation.getTitle(), getAnnotationBodyContent(cloudAnnotation));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
