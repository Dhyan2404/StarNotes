package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.net.MailTo;
import com.blankj.utilcode.util.ConvertUtils;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.caverock.androidsvg.CSSParser;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.exoplayer2.util.ColorParser;
import com.google.android.exoplayer2.util.MimeTypes;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.filepicker.PickerFileConst;
import com.onyx.galaxy.note.utils.ShellUtils;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.compressors.CompressorStreamFactory;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpHeaderValues;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0013\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0010\"\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bK\u0010LJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\t\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\n\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010\u0013\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002R\u0014\u0010\"\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010#R\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010#R\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010#R\u0014\u0010'\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010#R\u0014\u0010(\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010#R\u0014\u0010)\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010#R\u0014\u0010*\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010#R\u0014\u0010+\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010#R\u0014\u0010,\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010#R\u0014\u0010-\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010#R\u0014\u0010.\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010#R\u0014\u0010/\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b/\u0010#R\u0014\u00100\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010#R\u0014\u00101\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010#R\u0014\u00102\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010#R!\u00107\u001a\b\u0012\u0004\u0012\u00020\u0002038FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u00104\u001a\u0004\b5\u00106R\u001d\u0010;\u001a\b\u0012\u0004\u0012\u00020\u0002038\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u00106R\u001d\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00020<8\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001d\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00020<8\u0006¢\u0006\f\n\u0004\bB\u0010>\u001a\u0004\bC\u0010@R#\u0010J\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020E0E8\u0006¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I¨\u0006M"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;", "", "", HuaweiYunQueryArgs.FILE_NAME, "", "isImageFile", "isEpubFile", "isPdfFile", "isSvgFile", "isOffice", "isDoc", "isPPT", "extensionWithoutDot", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "extension", "", "extensions", "isAudio", "isVideoType", "isImageType", "isApplicationType", "isAllType", "isJPG", "isPictureExtension", "Landroid/net/Uri;", "uri", "Ljava/io/InputStream;", "stream", "getImageExtension", "Lcom/blankj/utilcode/util/ImageUtils$ImageType;", "getImageType", "", HttpHeaderValues.BYTES, "a", "DEFAULT_MIMETYPE_ALL", Constants.STRING_SIG, "DEFAULT_MIMETYPE_TEXT", "DEFAULT_MIMETYPE_AUDIO", "DEFAULT_MIMETYPE_IMAGE", "DEFAULT_MIMETYPE_VIDEO", "DEFAULT_MIMETYPE_APPLICATION", "MIMETYPE_APPLICATION_OCTET_STREAM", "MIMETYPE_PDF", "MIMETYPE_ZIP", "IMAGE_PREFIX", "TEXT_XML", "TEXT_URI_LIST", "AUDIO_PREFIX", "VIDEO_PREFIX", "TEXT_PREFIX", "EXTENSION_TYPE_BIN", "", "Lkotlin/Lazy;", "getReaderSupportFormatExtension", "()Ljava/util/List;", "readerSupportFormatExtension", "b", "Ljava/util/List;", "getDocumentFormatExtension", "documentFormatExtension", "", "c", "Ljava/util/Set;", "getPicExtension", "()Ljava/util/Set;", "picExtension", "d", "getJpegExtension", "jpegExtension", "", "e", "[[Ljava/lang/String;", "getMIME_TYPE_BY_EXTENSION_MAP", "()[[Ljava/lang/String;", "MIME_TYPE_BY_EXTENSION_MAP", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FileExtensionUtils {

    @NotNull
    public static final String AUDIO_PREFIX = "audio/";

    @NotNull
    public static final String DEFAULT_MIMETYPE_ALL = "*/*";

    @NotNull
    public static final String DEFAULT_MIMETYPE_APPLICATION = "application/*";

    @NotNull
    public static final String DEFAULT_MIMETYPE_AUDIO = "audio/*";

    @NotNull
    public static final String DEFAULT_MIMETYPE_IMAGE = "image/*";

    @NotNull
    public static final String DEFAULT_MIMETYPE_TEXT = "text/*";

    @NotNull
    public static final String DEFAULT_MIMETYPE_VIDEO = "video/*";

    @NotNull
    public static final String EXTENSION_TYPE_BIN = "bin";

    @NotNull
    public static final String IMAGE_PREFIX = "image/";

    @NotNull
    public static final FileExtensionUtils INSTANCE = new FileExtensionUtils();

    @NotNull
    public static final String MIMETYPE_APPLICATION_OCTET_STREAM = "application/octet-stream";

    @NotNull
    public static final String MIMETYPE_PDF = "application/pdf";

    @NotNull
    public static final String MIMETYPE_ZIP = "application/zip";

    @NotNull
    public static final String TEXT_PREFIX = "text/plain";

    @NotNull
    public static final String TEXT_URI_LIST = "text/uri-list";

    @NotNull
    public static final String TEXT_XML = "text/xml";

    @NotNull
    public static final String VIDEO_PREFIX = "video/";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy readerSupportFormatExtension;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final List<String> documentFormatExtension;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Set<String> picExtension;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Set<String> jpegExtension;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String[][] MIME_TYPE_BY_EXTENSION_MAP;

    static {
        Lazy lazy;
        List<String> mutableListOf;
        Set<String> of;
        Set<String> of2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<String>>() { // from class: com.onyx.android.sdk.base.utils.FileExtensionUtils$readerSupportFormatExtension$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<String> invoke() {
                ArrayList arrayList = new ArrayList();
                FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
                arrayList.addAll(fileExtensionUtils.getDocumentFormatExtension());
                arrayList.addAll(fileExtensionUtils.getPicExtension());
                return arrayList;
            }
        });
        readerSupportFormatExtension = lazy;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf("azw", "azw3", FileTypeConstant.CBZ, FileTypeConstant.CBR, FileTypeConstant.CHM, FileTypeConstant.DJVU, "doc", "docm", FileTypeConstant.DOCX, "epub", FileTypeConstant.FB2, "fbz", "fb3", "mobi", FileTypeConstant.JEB, "jdnovel", "comic", "odt", FileTypeConstant.PDB, "pdf", PickerFileConst.CAJ, FileTypeConstant.PRC, FileTypeConstant.RTF, "sxw", "trc", "txt", "zip", "xml", FileTypeConstant.HTM, "html", "xhtml", "ppt", FileTypeConstant.PPS, FileTypeConstant.POT, FileTypeConstant.PPA, FileTypeConstant.PPTX, FileTypeConstant.PPSX, FileTypeConstant.PPTM, FileTypeConstant.PPSM, FileTypeConstant.POTX, FileTypeConstant.POTM, FileTypeConstant.PPAM, "md");
        documentFormatExtension = mutableListOf;
        of = SetsKt__SetsKt.setOf((Object[]) new String[]{"jpg", "jpeg", FileTypeConstant.BMP, "png", "webp", "gif", FileTypeConstant.TIF});
        picExtension = of;
        of2 = SetsKt__SetsKt.setOf((Object[]) new String[]{"jpg", "jpeg"});
        jpegExtension = of2;
        MIME_TYPE_BY_EXTENSION_MAP = new String[][]{new String[]{"", "application/octet-stream"}, new String[]{"123", "application/vnd.lotus-1-2-3"}, new String[]{"323", "text/h323"}, new String[]{"3dml", "text/vnd.in3d.3dml"}, new String[]{"3g2", "video/3gpp2"}, new String[]{"3gp", MimeTypes.VIDEO_H263}, new String[]{"aab", "application/x-authorware-bin"}, new String[]{"aac", "audio/x-aac"}, new String[]{"aam", "application/x-authorware-map"}, new String[]{"a", "application/octet-stream"}, new String[]{"aas", "application/x-authorware-seg"}, new String[]{"abc", "text/vnd.abc"}, new String[]{"abw", "application/x-abiword"}, new String[]{"acc", "application/vnd.americandynamics.acc"}, new String[]{"ace", "application/x-ace-compressed"}, new String[]{"acgi", "text/html"}, new String[]{"acu", "application/vnd.acucobol"}, new String[]{"acutc", "application/vnd.acucorp"}, new String[]{"acx", "application/internet-property-stream"}, new String[]{"adp", "audio/adpcm"}, new String[]{"aep", "application/vnd.audiograph"}, new String[]{"afm", "application/x-font-type1"}, new String[]{"afp", "application/vnd.ibm.modcap"}, new String[]{"ai", "application/postscript"}, new String[]{"aif", "audio/x-aiff"}, new String[]{"aifc", "audio/x-aiff"}, new String[]{"aiff", "audio/x-aiff"}, new String[]{"aip", "text/x-audiosoft-intra"}, new String[]{"air", "application/vnd.adobe.air-application-installer-package+zip"}, new String[]{"ami", "application/vnd.amiga.ami"}, new String[]{"apk", "application/vnd.android.package-archive"}, new String[]{"application", "application/x-ms-application"}, new String[]{"apr", "application/vnd.lotus-approach"}, new String[]{"asc", "application/pgp-signature"}, new String[]{"asf", "video/x-ms-asf"}, new String[]{"asm", "text/x-asm"}, new String[]{"aso", "application/vnd.accpac.simply.aso"}, new String[]{"asp", "text/asp"}, new String[]{"asr", "video/x-ms-asf"}, new String[]{"asx", "video/x-ms-asf"}, new String[]{"atc", "application/vnd.acucorp"}, new String[]{"atom", "application/atom+xml"}, new String[]{"atomcat", "application/atomcat+xml"}, new String[]{"atomsvc", "application/atomsvc+xml"}, new String[]{"atx", "application/vnd.antix.game-component"}, new String[]{"au", "audio/basic"}, new String[]{FileTypeConstant.AVI, "video/x-msvideo"}, new String[]{"aw", "application/applixware"}, new String[]{"axs", "application/olescript"}, new String[]{"azf", "application/vnd.airzip.filesecure.azf"}, new String[]{"azs", "application/vnd.airzip.filesecure.azs"}, new String[]{"azw", "application/vnd.amazon.ebook"}, new String[]{"azw3", "application/azw3"}, new String[]{"bas", "text/plain"}, new String[]{"bat", "application/x-msdownload"}, new String[]{"bcpio", "application/x-bcpio"}, new String[]{"bdf", "application/x-font-bdf"}, new String[]{"bdm", "application/vnd.syncml.dm+wbxml"}, new String[]{"bh2", "application/vnd.fujitsu.oasysprs"}, new String[]{EXTENSION_TYPE_BIN, "application/octet-stream"}, new String[]{"bmi", "application/vnd.bmi"}, new String[]{FileTypeConstant.BMP, "image/bmp"}, new String[]{"book", "application/vnd.framemaker"}, new String[]{"box", "application/vnd.previewsystems.box"}, new String[]{"boz", "application/x-bzip2"}, new String[]{"bpk", "application/octet-stream"}, new String[]{"btif", "image/prs.btif"}, new String[]{"bz2", "application/x-bzip2"}, new String[]{"bz", "application/x-bzip"}, new String[]{"c4d", "application/vnd.clonk.c4group"}, new String[]{"c4f", "application/vnd.clonk.c4group"}, new String[]{"c4g", "application/vnd.clonk.c4group"}, new String[]{"c4p", "application/vnd.clonk.c4group"}, new String[]{"c4u", "application/vnd.clonk.c4group"}, new String[]{"cab", "application/vnd.ms-cab-compressed"}, new String[]{"car", "application/vnd.curl.car"}, new String[]{"cat", "application/vnd.ms-pki.seccat"}, new String[]{"cct", "application/x-director"}, new String[]{MailTo.f5527e, "text/x-c"}, new String[]{"c++", "text/plain"}, new String[]{"ccxml", "application/ccxml+xml"}, new String[]{"cdbcmsg", "application/vnd.contact.cmsg"}, new String[]{"cdf", "application/x-cdf"}, new String[]{"cdkey", "application/vnd.mediastation.cdkey"}, new String[]{"cdx", "chemical/x-cdx"}, new String[]{"cdxml", "application/vnd.chemdraw+xml"}, new String[]{"cdy", "application/vnd.cinderella"}, new String[]{"cer", "application/x-x509-ca-cert"}, new String[]{"cgm", "image/cgm"}, new String[]{"chat", "application/x-chat"}, new String[]{FileTypeConstant.CHM, "application/vnd.ms-htmlhelp"}, new String[]{"chrt", "application/vnd.kde.kchart"}, new String[]{"cif", "chemical/x-cif"}, new String[]{"cii", "application/vnd.anser-web-certificate-issue-initiation"}, new String[]{"cla", "application/vnd.claymore"}, new String[]{"class", "application/java-vm"}, new String[]{"clkk", "application/vnd.crick.clicker.keyboard"}, new String[]{"clkp", "application/vnd.crick.clicker.palette"}, new String[]{"clkt", "application/vnd.crick.clicker.template"}, new String[]{"clkw", "application/vnd.crick.clicker.wordbank"}, new String[]{"clkx", "application/vnd.crick.clicker"}, new String[]{"clp", "application/x-msclip"}, new String[]{"cmc", "application/vnd.cosmocaller"}, new String[]{"cmdf", "chemical/x-cmdf"}, new String[]{"cml", "chemical/x-cml"}, new String[]{"cmp", "application/vnd.yellowriver-custom-menu"}, new String[]{"cmx", "image/x-cmx"}, new String[]{"cod", "application/vnd.rim.cod"}, new String[]{"com", "text/plain"}, new String[]{"conf", "text/plain"}, new String[]{ArchiveStreamFactory.CPIO, "application/x-cpio"}, new String[]{"cpp", "text/x-c"}, new String[]{"cpt", "application/mac-compactpro"}, new String[]{"crd", "application/x-mscardfile"}, new String[]{"crl", "application/pkix-crl"}, new String[]{"crt", "application/x-x509-ca-cert"}, new String[]{"csh", "text/x-script.csh"}, new String[]{"csml", "chemical/x-csml"}, new String[]{"csp", "application/vnd.commonspace"}, new String[]{"css", CSSParser.f15748e}, new String[]{"cst", "application/x-director"}, new String[]{"csv", "text/csv"}, new String[]{"c", "text/plain"}, new String[]{"cu", "application/cu-seeme"}, new String[]{"curl", "text/vnd.curl"}, new String[]{"cww", "application/prs.cww"}, new String[]{"cxt", "application/x-director"}, new String[]{"cxx", "text/x-c"}, new String[]{"daf", "application/vnd.mobius.daf"}, new String[]{"dataless", "application/vnd.fdsn.seed"}, new String[]{"davmount", "application/davmount+xml"}, new String[]{"dcr", "application/x-director"}, new String[]{"dcurl", "text/vnd.curl.dcurl"}, new String[]{"dd2", "application/vnd.oma.dd2+xml"}, new String[]{"ddd", "application/vnd.fujixerox.ddd"}, new String[]{"deb", "application/x-debian-package"}, new String[]{"def", "text/plain"}, new String[]{"deploy", "application/octet-stream"}, new String[]{"der", "application/x-x509-ca-cert"}, new String[]{"dfac", "application/vnd.dreamfactory"}, new String[]{"dic", "text/x-c"}, new String[]{"diff", "text/plain"}, new String[]{CouchFieldKey.KEY_DIR, "application/x-director"}, new String[]{"dis", "application/vnd.mobius.dis"}, new String[]{"dist", "application/octet-stream"}, new String[]{"distz", "application/octet-stream"}, new String[]{"djv", "image/vnd.djvu"}, new String[]{FileTypeConstant.DJVU, "image/vnd.djvu"}, new String[]{"dll", "application/x-msdownload"}, new String[]{"dmg", "application/octet-stream"}, new String[]{"dms", "application/octet-stream"}, new String[]{"dna", "application/vnd.dna"}, new String[]{"doc", "application/msword"}, new String[]{"docm", "application/vnd.ms-word.document.macroenabled.12"}, new String[]{FileTypeConstant.DOCX, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"}, new String[]{gon.f71308x0, "application/msword"}, new String[]{"dotm", "application/vnd.ms-word.template.macroenabled.12"}, new String[]{"dotx", "application/vnd.openxmlformats-officedocument.wordprocessingml.template"}, new String[]{"dp", "application/vnd.osgi.dp"}, new String[]{"dpg", "application/vnd.dpgraph"}, new String[]{"dsc", "text/prs.lines.tag"}, new String[]{"dtb", "application/x-dtbook+xml"}, new String[]{"dtd", "application/xml-dtd"}, new String[]{"dts", MimeTypes.AUDIO_DTS}, new String[]{"dtshd", MimeTypes.AUDIO_DTS_HD}, new String[]{ArchiveStreamFactory.DUMP, "application/octet-stream"}, new String[]{"dvi", "application/x-dvi"}, new String[]{"dwf", "model/vnd.dwf"}, new String[]{"dwg", "image/vnd.dwg"}, new String[]{"dxf", "image/vnd.dxf"}, new String[]{"dxp", "application/vnd.spotfire.dxp"}, new String[]{"dxr", "application/x-director"}, new String[]{"ecelp4800", "audio/vnd.nuera.ecelp4800"}, new String[]{"ecelp7470", "audio/vnd.nuera.ecelp7470"}, new String[]{"ecelp9600", "audio/vnd.nuera.ecelp9600"}, new String[]{"ecma", "application/ecmascript"}, new String[]{"edm", "application/vnd.novadigm.edm"}, new String[]{"edx", "application/vnd.novadigm.edx"}, new String[]{"efif", "application/vnd.picsel"}, new String[]{"ei6", "application/vnd.pg.osasli"}, new String[]{"el", "text/x-script.elisp"}, new String[]{"elc", "application/octet-stream"}, new String[]{"eml", "message/rfc822"}, new String[]{"emma", "application/emma+xml"}, new String[]{"eol", "audio/vnd.digital-winds"}, new String[]{"eot", "application/vnd.ms-fontobject"}, new String[]{"eps", "application/postscript"}, new String[]{"epub", "application/epub+zip"}, new String[]{"es3", "application/vnd.eszigno3+xml"}, new String[]{"esf", "application/vnd.epson.esf"}, new String[]{"et3", "application/vnd.eszigno3+xml"}, new String[]{"etx", "text/x-setext"}, new String[]{"evy", "application/envoy"}, new String[]{"exe", "application/octet-stream"}, new String[]{"ext", "application/vnd.novadigm.ext"}, new String[]{"ez2", "application/vnd.ezpix-album"}, new String[]{"ez3", "application/vnd.ezpix-package"}, new String[]{"ez", "application/andrew-inset"}, new String[]{"f4v", "video/x-f4v"}, new String[]{"f77", "text/x-fortran"}, new String[]{"f90", "text/x-fortran"}, new String[]{"fbs", "image/vnd.fastbidsheet"}, new String[]{"fdf", "application/vnd.fdf"}, new String[]{"fe_launch", "application/vnd.denovo.fcselayout-link"}, new String[]{"fg5", "application/vnd.fujitsu.oasysgp"}, new String[]{"fgd", "application/x-director"}, new String[]{"fh4", "image/x-freehand"}, new String[]{"fh5", "image/x-freehand"}, new String[]{"fh7", "image/x-freehand"}, new String[]{"fhc", "image/x-freehand"}, new String[]{"fh", "image/x-freehand"}, new String[]{"fif", "application/fractals"}, new String[]{"fig", "application/x-xfig"}, new String[]{"fli", "video/x-fli"}, new String[]{"flo", "application/vnd.micrografx.flo"}, new String[]{"flr", "x-world/x-vrml"}, new String[]{FileTypeConstant.FLV, MimeTypes.VIDEO_FLV}, new String[]{"flw", "application/vnd.kde.kivio"}, new String[]{"flx", "text/vnd.fmi.flexstor"}, new String[]{"fly", "text/vnd.fly"}, new String[]{"fm", "application/vnd.framemaker"}, new String[]{"fnc", "application/vnd.frogans.fnc"}, new String[]{"for", "text/x-fortran"}, new String[]{"fpx", "image/vnd.fpx"}, new String[]{TypedValues.AttributesType.S_FRAME, "application/vnd.framemaker"}, new String[]{"fsc", "application/vnd.fsc.weblaunch"}, new String[]{"fst", "image/vnd.fst"}, new String[]{"ftc", "application/vnd.fluxtime.clip"}, new String[]{C6997f.f39671c, "text/x-fortran"}, new String[]{"fti", "application/vnd.anser-web-funds-transfer-initiation"}, new String[]{"fvt", "video/vnd.fvt"}, new String[]{"fzs", "application/vnd.fuzzysheet"}, new String[]{C6998g.f39679a, "text/plain"}, new String[]{"g3", "image/g3fax"}, new String[]{"gac", "application/vnd.groove-account"}, new String[]{"gdl", "model/vnd.gdl"}, new String[]{"geo", "application/vnd.dynageo"}, new String[]{"gex", "application/vnd.geometry-explorer"}, new String[]{"ggb", "application/vnd.geogebra.file"}, new String[]{"ggt", "application/vnd.geogebra.tool"}, new String[]{"ghf", "application/vnd.groove-help"}, new String[]{"gif", "image/gif"}, new String[]{"gim", "application/vnd.groove-identity-message"}, new String[]{"gmx", "application/vnd.gmx"}, new String[]{"gnumeric", "application/x-gnumeric"}, new String[]{"gph", "application/vnd.flographit"}, new String[]{"gqf", "application/vnd.grafeq"}, new String[]{"gqs", "application/vnd.grafeq"}, new String[]{"gram", "application/srgs"}, new String[]{"gre", "application/vnd.geometry-explorer"}, new String[]{"grv", "application/vnd.groove-injector"}, new String[]{"grxml", "application/srgs+xml"}, new String[]{"gsf", "application/x-font-ghostscript"}, new String[]{"gtar", "application/x-gtar"}, new String[]{"gtm", "application/vnd.groove-tool-message"}, new String[]{"gtw", "model/vnd.gtw"}, new String[]{"gv", "text/vnd.graphviz"}, new String[]{CompressorStreamFactory.GZIP, "application/x-gzip"}, new String[]{"h261", "video/h261"}, new String[]{"h263", "video/h263"}, new String[]{"h264", "video/h264"}, new String[]{"hbci", "application/vnd.hbci"}, new String[]{"hdf", "application/x-hdf"}, new String[]{"hh", "text/x-c"}, new String[]{"hlb", "text/x-script"}, new String[]{"hlp", "application/winhlp"}, new String[]{"hpgl", "application/vnd.hp-hpgl"}, new String[]{"hpid", "application/vnd.hp-hpid"}, new String[]{"hps", "application/vnd.hp-hps"}, new String[]{"hqx", "application/mac-binhex40"}, new String[]{"hta", "application/hta"}, new String[]{"htc", "text/x-component"}, new String[]{"htx", "text/html"}, new String[]{C6999h.f39688c, "text/plain"}, new String[]{"htke", "application/vnd.kenameaapp"}, new String[]{"htmls", "text/html"}, new String[]{"html", "text/html"}, new String[]{FileTypeConstant.HTM, "text/html"}, new String[]{"htt", "text/webviewhtml"}, new String[]{"hvd", "application/vnd.yamaha.hv-dic"}, new String[]{"hvp", "application/vnd.yamaha.hv-voice"}, new String[]{"hvs", "application/vnd.yamaha.hv-script"}, new String[]{"idc", "text/plain"}, new String[]{"icc", "application/vnd.iccprofile"}, new String[]{"ice", "x-conference/x-cooltalk"}, new String[]{"icm", "application/vnd.iccprofile"}, new String[]{FileTypeConstant.ICO, "image/x-icon"}, new String[]{"ics", "text/calendar"}, new String[]{"ief", "image/ief"}, new String[]{"ifb", "text/calendar"}, new String[]{"ifm", "application/vnd.shana.informed.formdata"}, new String[]{"iges", "model/iges"}, new String[]{"igl", "application/vnd.igloader"}, new String[]{"igs", "model/iges"}, new String[]{"igx", "application/vnd.micrografx.igx"}, new String[]{"iif", "application/vnd.shana.informed.interchange"}, new String[]{"iii", "application/x-iphone"}, new String[]{"imp", "application/vnd.accpac.simply.imp"}, new String[]{"ims", "application/vnd.ms-ims"}, new String[]{"ins", "application/x-internet-signup"}, new String[]{"in", "text/plain"}, new String[]{"ipk", "application/vnd.shana.informed.package"}, new String[]{"irm", "application/vnd.ibm.rights-management"}, new String[]{"irp", "application/vnd.irepository.package+xml"}, new String[]{"iso", "application/octet-stream"}, new String[]{"isp", "application/x-internet-signup"}, new String[]{"itp", "application/vnd.shana.informed.formtemplate"}, new String[]{"ivp", "application/vnd.immervision-ivp"}, new String[]{"ivu", "application/vnd.immervision-ivu"}, new String[]{"jad", "text/vnd.sun.j2me.app-descriptor"}, new String[]{"jam", "application/vnd.jam"}, new String[]{ArchiveStreamFactory.JAR, "application/java-archive"}, new String[]{"jav", "text/x-java-source"}, new String[]{"java", "text/x-java-source"}, new String[]{"jfif", "image/pipeg"}, new String[]{"jisp", "application/vnd.jisp"}, new String[]{"jlt", "application/vnd.hp-jlyt"}, new String[]{"jnlp", "application/x-java-jnlp-file"}, new String[]{"joda", "application/vnd.joost.joda-archive"}, new String[]{"jpeg", "image/jpeg"}, new String[]{"jpe", "image/jpeg"}, new String[]{"jpg", "image/jpeg"}, new String[]{"jpgm", "video/jpm"}, new String[]{"jpgv", "video/jpeg"}, new String[]{"jpm", "video/jpm"}, new String[]{"js", "text/javascript"}, new String[]{"json", "application/json"}, new String[]{"kar", "audio/midi"}, new String[]{"karbon", "application/vnd.kde.karbon"}, new String[]{"kfo", "application/vnd.kde.kformula"}, new String[]{"kia", "application/vnd.kidspiration"}, new String[]{"kil", "application/x-killustrator"}, new String[]{"kml", "application/vnd.google-earth.kml+xml"}, new String[]{"kmz", "application/vnd.google-earth.kmz"}, new String[]{"kne", "application/vnd.kinar"}, new String[]{"knp", "application/vnd.kinar"}, new String[]{"kon", "application/vnd.kde.kontour"}, new String[]{"kpr", "application/vnd.kde.kpresenter"}, new String[]{"kpt", "application/vnd.kde.kpresenter"}, new String[]{"ksh", "text/plain"}, new String[]{"ksp", "application/vnd.kde.kspread"}, new String[]{"ktr", "application/vnd.kahootz"}, new String[]{"ktz", "application/vnd.kahootz"}, new String[]{"kwd", "application/vnd.kde.kword"}, new String[]{"kwt", "application/vnd.kde.kword"}, new String[]{"latex", "application/x-latex"}, new String[]{"lbd", "application/vnd.llamagraphics.life-balance.desktop"}, new String[]{"lbe", "application/vnd.llamagraphics.life-balance.exchange+xml"}, new String[]{"les", "application/vnd.hhe.lesson-player"}, new String[]{"lha", "application/octet-stream"}, new String[]{"link66", "application/vnd.route66.link66+xml"}, new String[]{"list3820", "application/vnd.ibm.modcap"}, new String[]{"listafp", "application/vnd.ibm.modcap"}, new String[]{"list", "text/plain"}, new String[]{"log", "text/plain"}, new String[]{"lostxml", "application/lost+xml"}, new String[]{"lrf", "application/octet-stream"}, new String[]{"lrm", "application/vnd.ms-lrm"}, new String[]{"lsf", "video/x-la-asf"}, new String[]{"lsp", "text/x-script.lisp"}, new String[]{"lst", "text/plain"}, new String[]{"lsx", "video/x-la-asf"}, new String[]{"ltf", "application/vnd.frogans.ltf"}, new String[]{"lvp", "audio/vnd.lucent.voice"}, new String[]{"lwp", "application/vnd.lotus-wordpro"}, new String[]{"lzh", "application/octet-stream"}, new String[]{"m13", "application/x-msmediaview"}, new String[]{"m14", "application/x-msmediaview"}, new String[]{"m1v", MimeTypes.VIDEO_MPEG}, new String[]{"m2a", "audio/mpeg"}, new String[]{"m2v", MimeTypes.VIDEO_MPEG}, new String[]{"m3a", "audio/mpeg"}, new String[]{"m3u", "audio/x-mpegurl"}, new String[]{"m4u", "video/vnd.mpegurl"}, new String[]{"m4v", "video/x-m4v"}, new String[]{"m", "text/x-m"}, new String[]{"ma", "application/mathematica"}, new String[]{"mag", "application/vnd.ecowin.chart"}, new String[]{"maker", "application/vnd.framemaker"}, new String[]{"man", "text/troff"}, new String[]{"mar", "text/plain"}, new String[]{"mathml", "application/mathml+xml"}, new String[]{"mb", "application/mathematica"}, new String[]{"mbk", "application/vnd.mobius.mbk"}, new String[]{"mbox", "application/mbox"}, new String[]{"mc1", "application/vnd.medcalcdata"}, new String[]{"mcd", "application/vnd.mcd"}, new String[]{"mcf", "text/mcf"}, new String[]{"mcurl", "text/vnd.curl.mcurl"}, new String[]{"md", "text/markdown"}, new String[]{"mdb", "application/x-msaccess"}, new String[]{"mdi", "image/vnd.ms-modi"}, new String[]{"mesh", "model/mesh"}, new String[]{"me", "text/troff"}, new String[]{"mfm", "application/vnd.mfmp"}, new String[]{"mgz", "application/vnd.proteus.magazine"}, new String[]{"mht", "message/rfc822"}, new String[]{"mhtml", "message/rfc822"}, new String[]{"mid", "audio/midi"}, new String[]{"midi", "audio/midi"}, new String[]{"mif", "application/vnd.mif"}, new String[]{"mime", "message/rfc822"}, new String[]{"mj2", "video/mj2"}, new String[]{"mjp2", "video/mj2"}, new String[]{"mlp", "application/vnd.dolby.mlp"}, new String[]{"mmd", "application/vnd.chipnuts.karaoke-mmd"}, new String[]{"mmf", "application/vnd.smaf"}, new String[]{"mmr", "image/vnd.fujixerox.edmics-mmr"}, new String[]{"mny", "application/x-msmoney"}, new String[]{"mobi", "application/x-mobipocket-ebook"}, new String[]{"movie", "video/x-sgi-movie"}, new String[]{FileTypeConstant.MOV, "video/quicktime"}, new String[]{"mp2a", "audio/mpeg"}, new String[]{"mp2", MimeTypes.VIDEO_MPEG}, new String[]{FileTypeConstant.MP3, "audio/mpeg"}, new String[]{MediaCodecUtil.f24847j, "audio/mp4"}, new String[]{"mp4s", MimeTypes.APPLICATION_MP4}, new String[]{FileTypeConstant.MP4, "video/mp4"}, new String[]{"mp4v", "video/mp4"}, new String[]{"mpa", MimeTypes.VIDEO_MPEG}, new String[]{"mpc", "application/vnd.mophun.certificate"}, new String[]{FileTypeConstant.MPEG, MimeTypes.VIDEO_MPEG}, new String[]{"mpe", MimeTypes.VIDEO_MPEG}, new String[]{"mpg4", "video/mp4"}, new String[]{"mpga", "audio/mpeg"}, new String[]{"mpg", MimeTypes.VIDEO_MPEG}, new String[]{"mpkg", "application/vnd.apple.installer+xml"}, new String[]{"mpm", "application/vnd.blueice.multipass"}, new String[]{"mpn", "application/vnd.mophun.application"}, new String[]{"mpp", "application/vnd.ms-project"}, new String[]{"mpt", "application/vnd.ms-project"}, new String[]{"mpv2", MimeTypes.VIDEO_MPEG}, new String[]{"mpy", "application/vnd.ibm.minipay"}, new String[]{"mqy", "application/vnd.mobius.mqy"}, new String[]{"mrc", "application/marc"}, new String[]{"mscml", "application/mediaservercontrol+xml"}, new String[]{"mseed", "application/vnd.fdsn.mseed"}, new String[]{"mseq", "application/vnd.mseq"}, new String[]{"msf", "application/vnd.epson.msf"}, new String[]{"msh", "model/mesh"}, new String[]{"msi", "application/x-msdownload"}, new String[]{HttpMeasureConstants.f94668b, "text/troff"}, new String[]{"msty", "application/vnd.muvee.style"}, new String[]{"mts", "model/vnd.mts"}, new String[]{"mus", "application/vnd.musician"}, new String[]{"musicxml", "application/vnd.recordare.musicxml+xml"}, new String[]{"mvb", "application/x-msmediaview"}, new String[]{"mxf", "application/mxf"}, new String[]{"mxl", "application/vnd.recordare.musicxml"}, new String[]{"mxml", "application/xv+xml"}, new String[]{"mxs", "application/vnd.triscape.mxs"}, new String[]{"mxu", "video/vnd.mpegurl"}, new String[]{"nb", "application/mathematica"}, new String[]{"nc", "application/x-netcdf"}, new String[]{"ncx", "application/x-dtbncx+xml"}, new String[]{"n-gage", "application/vnd.nokia.n-gage.symbian.install"}, new String[]{"ngdat", "application/vnd.nokia.n-gage.data"}, new String[]{"nlu", "application/vnd.neurolanguage.nlu"}, new String[]{"nml", "application/vnd.enliven"}, new String[]{"nnd", "application/vnd.noblenet-directory"}, new String[]{"nns", "application/vnd.noblenet-sealer"}, new String[]{"nnw", "application/vnd.noblenet-web"}, new String[]{"npx", "image/vnd.net-fpx"}, new String[]{"nsf", "application/vnd.lotus-notes"}, new String[]{"nws", "message/rfc822"}, new String[]{"oa2", "application/vnd.fujitsu.oasys2"}, new String[]{"oa3", "application/vnd.fujitsu.oasys3"}, new String[]{C4921e.f26528e, "application/octet-stream"}, new String[]{"oas", "application/vnd.fujitsu.oasys"}, new String[]{"obd", "application/x-msbinder"}, new String[]{IconCompat.f5434l, "application/octet-stream"}, new String[]{"oda", "application/oda"}, new String[]{"odb", "application/vnd.oasis.opendocument.database"}, new String[]{"odc", "application/vnd.oasis.opendocument.chart"}, new String[]{"odf", "application/vnd.oasis.opendocument.formula"}, new String[]{"odft", "application/vnd.oasis.opendocument.formula-template"}, new String[]{"odg", "application/vnd.oasis.opendocument.graphics"}, new String[]{"odi", "application/vnd.oasis.opendocument.image"}, new String[]{"odp", "application/vnd.oasis.opendocument.presentation"}, new String[]{"ods", "application/vnd.oasis.opendocument.spreadsheet"}, new String[]{"odt", "application/vnd.oasis.opendocument.text"}, new String[]{"oga", MimeTypes.AUDIO_OGG}, new String[]{"ogg", MimeTypes.AUDIO_OGG}, new String[]{"ogv", MimeTypes.VIDEO_OGG}, new String[]{"ogx", "application/ogg"}, new String[]{"onepkg", "application/onenote"}, new String[]{"onetmp", "application/onenote"}, new String[]{"onetoc2", "application/onenote"}, new String[]{"onetoc", "application/onenote"}, new String[]{"opf", "application/oebps-package+xml"}, new String[]{"oprc", "application/vnd.palm"}, new String[]{"org", "application/vnd.lotus-organizer"}, new String[]{"osf", "application/vnd.yamaha.openscoreformat"}, new String[]{"osfpvg", "application/vnd.yamaha.openscoreformat.osfpvg+xml"}, new String[]{"otc", "application/vnd.oasis.opendocument.chart-template"}, new String[]{"otf", "application/x-font-otf"}, new String[]{"otg", "application/vnd.oasis.opendocument.graphics-template"}, new String[]{"oth", "application/vnd.oasis.opendocument.text-web"}, new String[]{"oti", "application/vnd.oasis.opendocument.image-template"}, new String[]{"otm", "application/vnd.oasis.opendocument.text-master"}, new String[]{"otp", "application/vnd.oasis.opendocument.presentation-template"}, new String[]{"ots", "application/vnd.oasis.opendocument.spreadsheet-template"}, new String[]{"ott", "application/vnd.oasis.opendocument.text-template"}, new String[]{"oxt", "application/vnd.openofficeorg.extension"}, new String[]{"p10", "application/pkcs10"}, new String[]{"p12", "application/x-pkcs12"}, new String[]{"p7b", "application/x-pkcs7-certificates"}, new String[]{"p7c", "application/x-pkcs7-mime"}, new String[]{"p7m", "application/x-pkcs7-mime"}, new String[]{"p7r", "application/x-pkcs7-certreqresp"}, new String[]{"p7s", "application/x-pkcs7-signature"}, new String[]{"pas", "text/x-pascal"}, new String[]{"pbd", "application/vnd.powerbuilder6"}, new String[]{"pbm", "image/x-portable-bitmap"}, new String[]{"pcf", "application/x-font-pcf"}, new String[]{"pcl", "application/vnd.hp-pcl"}, new String[]{"pclxl", "application/vnd.hp-pclxl"}, new String[]{"pct", ContentTypes.IMAGE_PICT}, new String[]{"pcurl", "application/vnd.curl.pcurl"}, new String[]{"pcx", "image/x-pcx"}, new String[]{FileTypeConstant.PDB, "application/vnd.palm"}, new String[]{"pdf", "application/pdf"}, new String[]{"pfa", "application/x-font-type1"}, new String[]{"pfb", "application/x-font-type1"}, new String[]{"pfm", "application/x-font-type1"}, new String[]{"pfr", "application/font-tdpfr"}, new String[]{"pfx", "application/x-pkcs12"}, new String[]{"pgm", "image/x-portable-graymap"}, new String[]{"pgn", "application/x-chess-pgn"}, new String[]{"pgp", "application/pgp-encrypted"}, new String[]{"pic", ContentTypes.IMAGE_PICT}, new String[]{"pkg", "application/octet-stream"}, new String[]{"pki", "application/pkixcmp"}, new String[]{"pkipath", "application/pkix-pkipath"}, new String[]{"pko", "application/ynd.ms-pkipko"}, new String[]{"plb", "application/vnd.3gpp.pic-bw-large"}, new String[]{"plc", "application/vnd.mobius.plc"}, new String[]{"plf", "application/vnd.pocketlearn"}, new String[]{"pls", "application/pls+xml"}, new String[]{"pl", "text/plain"}, new String[]{"pma", "application/x-perfmon"}, new String[]{"pmc", "application/x-perfmon"}, new String[]{"pml", "application/x-perfmon"}, new String[]{"pmr", "application/x-perfmon"}, new String[]{"pmw", "application/x-perfmon"}, new String[]{"pm", "text/x-script.perl-module"}, new String[]{"png", "image/png"}, new String[]{"pnm", "image/x-portable-anymap"}, new String[]{"portpkg", "application/vnd.macports.portpkg"}, new String[]{FileTypeConstant.POT, "application/vnd.ms-powerpoint"}, new String[]{FileTypeConstant.POTM, "application/vnd.ms-powerpoint.template.macroenabled.12"}, new String[]{FileTypeConstant.POTX, "application/vnd.openxmlformats-officedocument.presentationml.template"}, new String[]{FileTypeConstant.PPA, "application/vnd.ms-powerpoint"}, new String[]{FileTypeConstant.PPAM, "application/vnd.ms-powerpoint.addin.macroenabled.12"}, new String[]{"ppd", "application/vnd.cups-ppd"}, new String[]{"ppm", "image/x-portable-pixmap"}, new String[]{FileTypeConstant.PPS, "application/vnd.ms-powerpoint"}, new String[]{FileTypeConstant.PPSM, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"}, new String[]{FileTypeConstant.PPSX, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"}, new String[]{"ppt", "application/vnd.ms-powerpoint"}, new String[]{FileTypeConstant.PPTM, "application/vnd.ms-powerpoint.presentation.macroenabled.12"}, new String[]{FileTypeConstant.PPTX, "application/vnd.openxmlformats-officedocument.presentationml.presentation"}, new String[]{"pqa", "application/vnd.palm"}, new String[]{FileTypeConstant.PRC, "application/x-mobipocket-ebook"}, new String[]{"pre", "application/vnd.lotus-freelance"}, new String[]{"prf", "application/pics-rules"}, new String[]{"ps", "application/postscript"}, new String[]{"psb", "application/vnd.3gpp.pic-bw-small"}, new String[]{"psd", "image/vnd.adobe.photoshop"}, new String[]{"psf", "application/x-font-linux-psf"}, new String[]{"p", "text/x-pascal"}, new String[]{"ptid", "application/vnd.pvi.ptid1"}, new String[]{"pub", "application/x-mspublisher"}, new String[]{"pvb", "application/vnd.3gpp.pic-bw-var"}, new String[]{"pwn", "application/vnd.3m.post-it-notes"}, new String[]{"pwz", "application/vnd.ms-powerpoint"}, new String[]{"pya", "audio/vnd.ms-playready.media.pya"}, new String[]{"pyc", "application/x-python-code"}, new String[]{"pyo", "application/x-python-code"}, new String[]{"py", "text/x-python"}, new String[]{"pyv", "video/vnd.ms-playready.media.pyv"}, new String[]{"qam", "application/vnd.epson.quickanime"}, new String[]{"qbo", "application/vnd.intu.qbo"}, new String[]{"qfx", "application/vnd.intu.qfx"}, new String[]{"qps", "application/vnd.publishare-delta-tree"}, new String[]{"qt", "video/quicktime"}, new String[]{"qwd", "application/vnd.quark.quarkxpress"}, new String[]{"qwt", "application/vnd.quark.quarkxpress"}, new String[]{"qxb", "application/vnd.quark.quarkxpress"}, new String[]{"qxd", "application/vnd.quark.quarkxpress"}, new String[]{"qxl", "application/vnd.quark.quarkxpress"}, new String[]{"qxt", "application/vnd.quark.quarkxpress"}, new String[]{"ra", "audio/x-pn-realaudio"}, new String[]{"ram", "audio/x-pn-realaudio"}, new String[]{FileTypeConstant.RAR, "application/x-rar-compressed"}, new String[]{"ras", "image/x-cmu-raster"}, new String[]{"rcprofile", "application/vnd.ipunplugged.rcprofile"}, new String[]{"rdf", "application/rdf+xml"}, new String[]{"rdz", "application/vnd.data-vision.rdz"}, new String[]{"rep", "application/vnd.businessobjects"}, new String[]{"res", "application/x-dtbresource+xml"}, new String[]{"rexx", "text/x-script.rexx"}, new String[]{ColorParser.f28273a, "image/x-rgb"}, new String[]{"rif", "application/reginfo+xml"}, new String[]{"rl", "application/resource-lists+xml"}, new String[]{"rlc", "image/vnd.fujixerox.edmics-rlc"}, new String[]{"rld", "application/resource-lists-diff+xml"}, new String[]{FileTypeConstant.RM, "application/vnd.rn-realmedia"}, new String[]{"rmi", "audio/midi"}, new String[]{"rmp", "audio/x-pn-realaudio-plugin"}, new String[]{"rms", "application/vnd.jcp.javame.midlet-rms"}, new String[]{"rnc", "application/relax-ng-compact-syntax"}, new String[]{"roff", "text/troff"}, new String[]{"rpm", "application/x-rpm"}, new String[]{"rpss", "application/vnd.nokia.radio-presets"}, new String[]{"rpst", "application/vnd.nokia.radio-preset"}, new String[]{"rq", "application/sparql-query"}, new String[]{"rs", "application/rls-services+xml"}, new String[]{"rsd", "application/rsd+xml"}, new String[]{"rss", "application/rss+xml"}, new String[]{FileTypeConstant.RTF, "application/rtf"}, new String[]{"rtx", "text/richtext"}, new String[]{WebvttCueParser.f27242v, "text/vnd.rn-realtext"}, new String[]{"saf", "application/vnd.yamaha.smaf-audio"}, new String[]{"sbml", "application/sbml+xml"}, new String[]{"sc", "application/vnd.ibm.secure-container"}, new String[]{"scd", "application/x-msschedule"}, new String[]{"scm", "text/x-script.scheme"}, new String[]{"scq", "application/scvp-cv-request"}, new String[]{"scs", "application/scvp-cv-response"}, new String[]{"sct", "text/scriptlet"}, new String[]{"scurl", "text/vnd.curl.scurl"}, new String[]{"sda", "application/vnd.stardivision.draw"}, new String[]{"sdc", "application/vnd.stardivision.calc"}, new String[]{"sdd", "application/vnd.stardivision.impress"}, new String[]{"sdkd", "application/vnd.solent.sdkm+xml"}, new String[]{"sdkm", "application/vnd.solent.sdkm+xml"}, new String[]{"sdml", "text/plain"}, new String[]{"sdp", "application/sdp"}, new String[]{"sdw", "application/vnd.stardivision.writer"}, new String[]{"see", "application/vnd.seemail"}, new String[]{"seed", "application/vnd.fdsn.seed"}, new String[]{"sema", "application/vnd.sema"}, new String[]{"semd", "application/vnd.semd"}, new String[]{"semf", "application/vnd.semf"}, new String[]{"ser", "application/java-serialized-object"}, new String[]{"setpay", "application/set-payment-initiation"}, new String[]{"setreg", "application/set-registration-initiation"}, new String[]{"sfd-hdstx", "application/vnd.hydrostatix.sof-data"}, new String[]{"sfs", "application/vnd.spotfire.sfs"}, new String[]{"sgl", "application/vnd.stardivision.writer-global"}, new String[]{"sgml", "text/sgml"}, new String[]{"sgm", "text/sgml"}, new String[]{ShellUtils.COMMAND_SH, "text/x-script.sh"}, new String[]{"shar", "application/x-shar"}, new String[]{"shf", "application/shf+xml"}, new String[]{"shtml", "text/html"}, new String[]{"sic", "application/vnd.wap.sic"}, new String[]{"sig", "application/pgp-signature"}, new String[]{"silo", "model/mesh"}, new String[]{"sis", "application/vnd.symbian.install"}, new String[]{"sisx", "application/vnd.symbian.install"}, new String[]{"sit", "application/x-stuffit"}, new String[]{"si", "text/vnd.wap.si"}, new String[]{"sitx", "application/x-stuffitx"}, new String[]{"skd", "application/vnd.koan"}, new String[]{"skm", "application/vnd.koan"}, new String[]{"skp", "application/vnd.koan"}, new String[]{"skt", "application/vnd.koan"}, new String[]{"slc", "application/vnd.wap.slc"}, new String[]{"sldm", "application/vnd.ms-powerpoint.slide.macroenabled.12"}, new String[]{"sldx", "application/vnd.openxmlformats-officedocument.presentationml.slide"}, new String[]{"slt", "application/vnd.epson.salt"}, new String[]{"sl", "text/vnd.wap.sl"}, new String[]{"smf", "application/vnd.stardivision.math"}, new String[]{"smi", "application/smil+xml"}, new String[]{"smil", "application/smil+xml"}, new String[]{"snd", "audio/basic"}, new String[]{"snf", "application/x-font-snf"}, new String[]{"so", "application/octet-stream"}, new String[]{"spc", "text/x-speech"}, new String[]{"spf", "application/vnd.yamaha.smaf-phrase"}, new String[]{"spl", "application/x-futuresplash"}, new String[]{"spot", "text/vnd.in3d.spot"}, new String[]{"spp", "application/scvp-vp-response"}, new String[]{"spq", "application/scvp-vp-request"}, new String[]{"spx", MimeTypes.AUDIO_OGG}, new String[]{Constant.SRC_TAG, "application/x-wais-source"}, new String[]{"srx", "application/sparql-results+xml"}, new String[]{"sse", "application/vnd.kodak-descriptor"}, new String[]{"ssf", "application/vnd.epson.ssf"}, new String[]{"ssi", "text/x-server-parsed-html"}, new String[]{"ssml", "application/ssml+xml"}, new String[]{"sst", "application/vnd.ms-pkicertstore"}, new String[]{"stc", "application/vnd.sun.xml.calc.template"}, new String[]{"std", "application/vnd.sun.xml.draw.template"}, new String[]{"s", "text/x-asm"}, new String[]{"stf", "application/vnd.wt.stf"}, new String[]{"sti", "application/vnd.sun.xml.impress.template"}, new String[]{"stk", "application/hyperstudio"}, new String[]{"stl", "application/vnd.ms-pki.stl"}, new String[]{"stm", "text/html"}, new String[]{ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "application/vnd.pg.format"}, new String[]{"stw", "application/vnd.sun.xml.writer.template"}, new String[]{"sus", "application/vnd.sus-calendar"}, new String[]{"susp", "application/vnd.sus-calendar"}, new String[]{"sv4cpio", "application/x-sv4cpio"}, new String[]{"sv4crc", "application/x-sv4crc"}, new String[]{"svd", "application/vnd.svd"}, new String[]{FileTypeConstant.SVG, "image/svg+xml"}, new String[]{"svgz", "image/svg+xml"}, new String[]{"swa", "application/x-director"}, new String[]{"swf", "application/x-shockwave-flash"}, new String[]{"swi", "application/vnd.arastra.swi"}, new String[]{"sxc", "application/vnd.sun.xml.calc"}, new String[]{"sxd", "application/vnd.sun.xml.draw"}, new String[]{"sxg", "application/vnd.sun.xml.writer.global"}, new String[]{"sxi", "application/vnd.sun.xml.impress"}, new String[]{"sxm", "application/vnd.sun.xml.math"}, new String[]{"sxw", "application/vnd.sun.xml.writer"}, new String[]{"tao", "application/vnd.tao.intent-module-archive"}, new String[]{"t", "application/x-troff"}, new String[]{ArchiveStreamFactory.TAR, "application/x-tar"}, new String[]{"talk", "text/x-speech"}, new String[]{"tcap", "application/vnd.3gpp2.tcap"}, new String[]{"tcl", "text/x-script.tcl"}, new String[]{"tcsh", "text/x-script.tcsh"}, new String[]{"teacher", "application/vnd.smart.teacher"}, new String[]{"tex", "application/x-tex"}, new String[]{"texi", "application/x-texinfo"}, new String[]{"texinfo", "application/x-texinfo"}, new String[]{"text", "text/plain"}, new String[]{"tfm", "application/x-tex-tfm"}, new String[]{"tgz", "application/x-gzip"}, new String[]{"tiff", ContentTypes.IMAGE_TIFF}, new String[]{FileTypeConstant.TIF, ContentTypes.IMAGE_TIFF}, new String[]{"tmo", "application/vnd.tmobile-livetv"}, new String[]{"torrent", "application/x-bittorrent"}, new String[]{"tpl", "application/vnd.groove-tool-template"}, new String[]{"tpt", "application/vnd.trid.tpt"}, new String[]{"tra", "application/vnd.trueapp"}, new String[]{"trm", "application/x-msterminal"}, new String[]{"tr", "text/troff"}, new String[]{"tsv", "text/tab-separated-values"}, new String[]{"ttc", "application/x-font-ttf"}, new String[]{"ttf", "application/x-font-ttf"}, new String[]{"twd", "application/vnd.simtech-mindmapper"}, new String[]{"twds", "application/vnd.simtech-mindmapper"}, new String[]{"txd", "application/vnd.genomatix.tuxedo"}, new String[]{"txf", "application/vnd.mobius.txf"}, new String[]{"txt", "text/plain"}, new String[]{"u32", "application/x-authorware-bin"}, new String[]{"udeb", "application/x-debian-package"}, new String[]{"ufd", "application/vnd.ufdl"}, new String[]{"ufdl", "application/vnd.ufdl"}, new String[]{"uls", "text/iuls"}, new String[]{"uil", "text/x-uil"}, new String[]{"umj", "application/vnd.umajin"}, new String[]{"unityweb", "application/vnd.unity"}, new String[]{"uoml", "application/vnd.uoml+xml"}, new String[]{"uris", TEXT_URI_LIST}, new String[]{"uri", TEXT_URI_LIST}, new String[]{"urls", TEXT_URI_LIST}, new String[]{"uni", TEXT_URI_LIST}, new String[]{"unis", TEXT_URI_LIST}, new String[]{"ustar", "application/x-ustar"}, new String[]{"utz", "application/vnd.uiq.theme"}, new String[]{"uu", "text/x-uuencode"}, new String[]{"uue", "text/x-uuencode"}, new String[]{"vcd", "application/x-cdlink"}, new String[]{"vcf", "text/x-vcard"}, new String[]{"vcg", "application/vnd.groove-vcard"}, new String[]{"vcs", "text/x-vcalendar"}, new String[]{"vcx", "application/vnd.vcx"}, new String[]{"vis", "application/vnd.visionary"}, new String[]{"viv", "video/vnd.vivo"}, new String[]{"vor", "application/vnd.stardivision.writer"}, new String[]{"vox", "application/x-authorware-bin"}, new String[]{"vrml", "x-world/x-vrml"}, new String[]{"vsd", "application/vnd.visio"}, new String[]{"vsf", "application/vnd.vsf"}, new String[]{"vss", "application/vnd.visio"}, new String[]{"vst", "application/vnd.visio"}, new String[]{"vsw", "application/vnd.visio"}, new String[]{"vtu", "model/vnd.vtu"}, new String[]{"vxml", "application/voicexml+xml"}, new String[]{"w3d", "application/x-director"}, new String[]{"wad", "application/x-doom"}, new String[]{FileTypeConstant.WAV, "audio/x-wav"}, new String[]{"wax", "audio/x-ms-wax"}, new String[]{"wbmp", Downsampler.f15031g}, new String[]{"wbs", "application/vnd.criticaltools.wbs+xml"}, new String[]{"wbxml", "application/vnd.wap.wbxml"}, new String[]{"wcm", "application/vnd.ms-works"}, new String[]{"wdb", "application/vnd.ms-works"}, new String[]{"webp", "image/webp"}, new String[]{"wiz", "application/msword"}, new String[]{"wks", "application/vnd.ms-works"}, new String[]{FileTypeConstant.WMA, "audio/x-ms-wma"}, new String[]{"wmd", "application/x-ms-wmd"}, new String[]{"wmf", "application/x-msmetafile"}, new String[]{"wmlc", "application/vnd.wap.wmlc"}, new String[]{"wmlsc", "application/vnd.wap.wmlscriptc"}, new String[]{"wmls", "text/vnd.wap.wmlscript"}, new String[]{"wml", "text/vnd.wap.wml"}, new String[]{"wm", "video/x-ms-wm"}, new String[]{FileTypeConstant.WMV, "video/x-ms-wmv"}, new String[]{"wmx", "video/x-ms-wmx"}, new String[]{"wmz", "application/x-ms-wmz"}, new String[]{"wpd", "application/vnd.wordperfect"}, new String[]{"wpl", "application/vnd.ms-wpl"}, new String[]{"wps", "application/vnd.ms-works"}, new String[]{"wqd", "application/vnd.wqd"}, new String[]{"wri", "application/x-mswrite"}, new String[]{"wrl", "x-world/x-vrml"}, new String[]{"wrz", "x-world/x-vrml"}, new String[]{"wsc", "text/scriplet"}, new String[]{"wsdl", "application/wsdl+xml"}, new String[]{"wspolicy", "application/wspolicy+xml"}, new String[]{"wtb", "application/vnd.webturbo"}, new String[]{"wvx", "video/x-ms-wvx"}, new String[]{"x32", "application/x-authorware-bin"}, new String[]{"x3d", "application/vnd.hzn-3d-crossword"}, new String[]{"xaf", "x-world/x-vrml"}, new String[]{"xap", "application/x-silverlight-app"}, new String[]{"xar", "application/vnd.xara"}, new String[]{"xbap", "application/x-ms-xbap"}, new String[]{"xbd", "application/vnd.fujixerox.docuworks.binder"}, new String[]{"xbm", "image/x-xbitmap"}, new String[]{"xdm", "application/vnd.syncml.dm+xml"}, new String[]{"xdp", "application/vnd.adobe.xdp+xml"}, new String[]{"xdw", "application/vnd.fujixerox.docuworks"}, new String[]{"xenc", "application/xenc+xml"}, new String[]{"xer", "application/patch-ops-error+xml"}, new String[]{"xfdf", "application/vnd.adobe.xfdf"}, new String[]{"xfdl", "application/vnd.xfdl"}, new String[]{"xht", "application/xhtml+xml"}, new String[]{"xhtml", "application/xhtml+xml"}, new String[]{"xhvml", "application/xv+xml"}, new String[]{"xif", "image/vnd.xiff"}, new String[]{"xla", "application/vnd.ms-excel"}, new String[]{"xlam", "application/vnd.ms-excel.addin.macroenabled.12"}, new String[]{"xlb", "application/vnd.ms-excel"}, new String[]{"xlc", "application/vnd.ms-excel"}, new String[]{"xlm", "application/vnd.ms-excel"}, new String[]{FileTypeConstant.XLS, "application/vnd.ms-excel"}, new String[]{"xlsb", "application/vnd.ms-excel.sheet.binary.macroenabled.12"}, new String[]{"xlsm", "application/vnd.ms-excel.sheet.macroenabled.12"}, new String[]{FileTypeConstant.XLSX, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"}, new String[]{"xlt", "application/vnd.ms-excel"}, new String[]{"xltm", "application/vnd.ms-excel.template.macroenabled.12"}, new String[]{"xltx", "application/vnd.openxmlformats-officedocument.spreadsheetml.template"}, new String[]{"xlw", "application/vnd.ms-excel"}, new String[]{"xml", "application/xml"}, new String[]{"xo", "application/vnd.olpc-sugar"}, new String[]{"xof", "x-world/x-vrml"}, new String[]{"xop", "application/xop+xml"}, new String[]{"xpdl", "application/xml"}, new String[]{"xpi", "application/x-xpinstall"}, new String[]{"xpm", "image/x-xpixmap"}, new String[]{"xpr", "application/vnd.is-xpr"}, new String[]{"xps", "application/vnd.ms-xpsdocument"}, new String[]{"xpw", "application/vnd.intercon.formnet"}, new String[]{"xpx", "application/vnd.intercon.formnet"}, new String[]{"xsl", "application/xml"}, new String[]{"xslt", "application/xslt+xml"}, new String[]{"xsm", "application/vnd.syncml+xml"}, new String[]{"xspf", "application/xspf+xml"}, new String[]{"xul", "application/vnd.mozilla.xul+xml"}, new String[]{"xvm", "application/xv+xml"}, new String[]{"xvml", "application/xv+xml"}, new String[]{"xwd", "image/x-xwindowdump"}, new String[]{"xyz", "chemical/x-xyz"}, new String[]{"z", "application/x-compress"}, new String[]{"zaz", "application/vnd.zzazz.deck+xml"}, new String[]{"zip", MIMETYPE_ZIP}, new String[]{"zir", "application/vnd.zul"}, new String[]{"zirz", "application/vnd.zul"}, new String[]{"zmm", "application/vnd.handheld-entertainment+xml"}, new String[]{"zsh", "text/x-script.zsh"}, new String[]{PickerFileConst.CAJ, "application/caj"}, new String[]{FileTypeConstant.CBR, "application/x-cbr"}, new String[]{FileTypeConstant.CBZ, "application/x-cbz"}};
    }

    /* renamed from: a */
    public final ImageUtils.ImageType m32068a(byte[] bytes) {
        boolean contains$default;
        boolean contains$default2;
        boolean contains$default3;
        boolean contains$default4;
        boolean contains$default5;
        boolean contains$default6;
        boolean startsWith$default;
        boolean contains$default7;
        boolean contains$default8;
        boolean endsWith$default;
        String bytes2HexString = ConvertUtils.bytes2HexString(bytes);
        Intrinsics.checkNotNullExpressionValue(bytes2HexString, "bytes2HexString(...)");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String upperCase = bytes2HexString.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "FFD8FF", false, 2, (Object) null);
        if (contains$default) {
            return ImageUtils.ImageType.TYPE_JPG;
        }
        contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "89504E47", false, 2, (Object) null);
        if (contains$default2) {
            return ImageUtils.ImageType.TYPE_PNG;
        }
        contains$default3 = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "47494638", false, 2, (Object) null);
        if (contains$default3) {
            return ImageUtils.ImageType.TYPE_GIF;
        }
        contains$default4 = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "49492A00", false, 2, (Object) null);
        if (!contains$default4) {
            contains$default5 = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "4D4D002A", false, 2, (Object) null);
            if (!contains$default5) {
                contains$default6 = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "424D", false, 2, (Object) null);
                if (contains$default6) {
                    return ImageUtils.ImageType.TYPE_BMP;
                }
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(upperCase, "52494646", false, 2, null);
                if (startsWith$default) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(upperCase, "57454250", false, 2, null);
                    if (endsWith$default) {
                        return ImageUtils.ImageType.TYPE_WEBP;
                    }
                }
                contains$default7 = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "00000100", false, 2, (Object) null);
                if (!contains$default7) {
                    contains$default8 = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "00000200", false, 2, (Object) null);
                    if (!contains$default8) {
                        return ImageUtils.ImageType.TYPE_UNKNOWN;
                    }
                }
                return ImageUtils.ImageType.TYPE_ICO;
            }
        }
        return ImageUtils.ImageType.TYPE_TIFF;
    }

    @Nullable
    public final String extension(@Nullable String mimeType) {
        boolean equals;
        if (mimeType == null) {
            return null;
        }
        for (String[] strArr : MIME_TYPE_BY_EXTENSION_MAP) {
            equals = StringsKt__StringsJVMKt.equals(strArr[1], mimeType, true);
            if (equals) {
                return strArr[0];
            }
        }
        return null;
    }

    @NotNull
    public final List<String> extensions(@Nullable String mimeType) {
        boolean equals;
        ArrayList arrayList = new ArrayList();
        if (mimeType == null) {
            return arrayList;
        }
        for (String[] strArr : MIME_TYPE_BY_EXTENSION_MAP) {
            equals = StringsKt__StringsJVMKt.equals(strArr[1], mimeType, true);
            if (equals) {
                arrayList.add(strArr[0]);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<String> getDocumentFormatExtension() {
        return documentFormatExtension;
    }

    @NotNull
    public final String getImageExtension(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Context appContext = ResManager.INSTANCE.getAppContext();
        String fileExtension = UriKt.getFileExtension(uri, appContext);
        if (fileExtension != null && isPictureExtension(fileExtension)) {
            return fileExtension;
        }
        InputStream openInputStream = appContext.getContentResolver().openInputStream(uri);
        if (openInputStream != null) {
            try {
                ImageUtils.ImageType imageType = INSTANCE.getImageType(openInputStream);
                if (imageType != null && imageType != ImageUtils.ImageType.TYPE_UNKNOWN) {
                    String value = imageType.getValue();
                    Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
                    CloseableKt.closeFinally(openInputStream, null);
                    return value;
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(openInputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(openInputStream, th);
                    throw th2;
                }
            }
        }
        return fileExtension == null ? "png" : fileExtension;
    }

    @Nullable
    public final ImageUtils.ImageType getImageType(@Nullable InputStream stream) {
        if (stream == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[12];
            if (stream.read(bArr) != -1) {
                return m32068a(bArr);
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final Set<String> getJpegExtension() {
        return jpegExtension;
    }

    @NotNull
    public final String[][] getMIME_TYPE_BY_EXTENSION_MAP() {
        return MIME_TYPE_BY_EXTENSION_MAP;
    }

    @NotNull
    public final Set<String> getPicExtension() {
        return picExtension;
    }

    @NotNull
    public final List<String> getReaderSupportFormatExtension() {
        return (List) readerSupportFormatExtension.getValue();
    }

    public final boolean isAllType(@Nullable String mimeType) {
        return Intrinsics.areEqual(DEFAULT_MIMETYPE_ALL, mimeType);
    }

    public final boolean isApplicationType(@Nullable String mimeType) {
        boolean contains$default;
        if (!StringKt.isNotBlank(mimeType)) {
            return false;
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) mimeType, (CharSequence) DEFAULT_MIMETYPE_APPLICATION, false, 2, (Object) null);
        return contains$default;
    }

    public final boolean isAudio(@Nullable String mimeType) {
        boolean contains$default;
        if (!(mimeType == null || mimeType.length() == 0)) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) mimeType, (CharSequence) AUDIO_PREFIX, false, 2, (Object) null);
            if (contains$default) {
                return true;
            }
        }
        return false;
    }

    public final boolean isDoc(@Nullable String fileName) {
        return StringUtils.endsWithIgnoreCase(fileName, ".doc") || StringUtils.endsWithIgnoreCase(fileName, ".dot") || StringUtils.endsWithIgnoreCase(fileName, ".docx") || StringUtils.endsWithIgnoreCase(fileName, ".dotx") || StringUtils.endsWithIgnoreCase(fileName, ".dotm") || StringUtils.endsWithIgnoreCase(fileName, ".docm");
    }

    public final boolean isEpubFile(@Nullable String fileName) {
        return StringUtils.endsWithIgnoreCase(fileName, ".epub");
    }

    public final boolean isImageFile(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = fileName.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        Iterator<String> it2 = picExtension.iterator();
        while (it2.hasNext()) {
            if (StringUtils.endsWithIgnoreCase(lowerCase, it2.next())) {
                return true;
            }
        }
        return false;
    }

    public final boolean isImageType(@Nullable String mimeType) {
        boolean contains$default;
        if (!(mimeType == null || mimeType.length() == 0)) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) mimeType, (CharSequence) IMAGE_PREFIX, false, 2, (Object) null);
            if (contains$default) {
                return true;
            }
        }
        return false;
    }

    public final boolean isJPG(@Nullable final String mimeType) {
        if (mimeType == null) {
            return false;
        }
        return CollectionKt.contains(jpegExtension, new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.base.utils.FileExtensionUtils$isJPG$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                boolean contains$default;
                Intrinsics.checkNotNullParameter(it2, "it");
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) mimeType, (CharSequence) it2, false, 2, (Object) null);
                return Boolean.valueOf(contains$default);
            }
        });
    }

    public final boolean isOffice(@Nullable String fileName) {
        return StringUtils.endsWithIgnoreCase(fileName, ".docx") || StringUtils.endsWithIgnoreCase(fileName, ".docm") || StringUtils.endsWithIgnoreCase(fileName, ".xlsx") || StringUtils.endsWithIgnoreCase(fileName, ".xlsm") || StringUtils.endsWithIgnoreCase(fileName, ".pptx") || StringUtils.endsWithIgnoreCase(fileName, ".pptm") || StringUtils.endsWithIgnoreCase(fileName, ".ppsx");
    }

    public final boolean isPPT(@Nullable String fileName) {
        return StringUtils.endsWithIgnoreCase(fileName, ".ppt") || StringUtils.endsWithIgnoreCase(fileName, ".pps") || StringUtils.endsWithIgnoreCase(fileName, ".pot") || StringUtils.endsWithIgnoreCase(fileName, ".ppa") || StringUtils.endsWithIgnoreCase(fileName, ".pptx") || StringUtils.endsWithIgnoreCase(fileName, ".ppsx") || StringUtils.endsWithIgnoreCase(fileName, ".pptm") || StringUtils.endsWithIgnoreCase(fileName, ".ppsm") || StringUtils.endsWithIgnoreCase(fileName, ".potx") || StringUtils.endsWithIgnoreCase(fileName, ".potm") || StringUtils.endsWithIgnoreCase(fileName, ".ppam");
    }

    public final boolean isPdfFile(@Nullable String fileName) {
        return StringUtils.endsWithIgnoreCase(fileName, CloudStorageConstants.PDF_FILE_SUFFIX);
    }

    public final boolean isPictureExtension(@NotNull String extension) {
        Intrinsics.checkNotNullParameter(extension, "extension");
        return picExtension.contains(extension);
    }

    public final boolean isSvgFile(@Nullable String fileName) {
        return StringUtils.endsWithIgnoreCase(fileName, ".svg");
    }

    public final boolean isVideoType(@Nullable String mimeType) {
        boolean contains$default;
        if (!(mimeType == null || mimeType.length() == 0)) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) mimeType, (CharSequence) VIDEO_PREFIX, false, 2, (Object) null);
            if (contains$default) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final String mimeType(@NotNull String extensionWithoutDot) {
        boolean equals;
        Intrinsics.checkNotNullParameter(extensionWithoutDot, "extensionWithoutDot");
        String upperCase = StringUtils.upperCase(extensionWithoutDot);
        for (String[] strArr : MIME_TYPE_BY_EXTENSION_MAP) {
            equals = StringsKt__StringsJVMKt.equals(strArr[0], upperCase, true);
            if (equals) {
                return strArr[1];
            }
        }
        return null;
    }

    public final boolean isImageType(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Context appContext = ResManager.INSTANCE.getAppContext();
        if (isImageType(appContext.getContentResolver().getType(uri))) {
            return true;
        }
        InputStream openInputStream = appContext.getContentResolver().openInputStream(uri);
        if (openInputStream == null) {
            return false;
        }
        try {
            if (INSTANCE.isImageType(openInputStream)) {
                CloseableKt.closeFinally(openInputStream, null);
                return true;
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(openInputStream, null);
            return false;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(openInputStream, th);
                throw th2;
            }
        }
    }

    public final boolean isImageType(@Nullable InputStream stream) {
        ImageUtils.ImageType imageType = getImageType(stream);
        return (imageType == null || imageType == ImageUtils.ImageType.TYPE_UNKNOWN) ? false : true;
    }
}
