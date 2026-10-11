package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FileAlreadyExistsException;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import onyx.org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b¦\u0001\u0010§\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0010\u001a\u00020\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0014\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002J\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002J\u001a\u0010\u0019\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u001a\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010\u001e\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010\u001fJ\"\u0010$\u001a\u00020\u0004\"\n\b\u0000\u0010!*\u0004\u0018\u00010\u001f2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\"J,\u0010)\u001a\u00020\u0004\"\u0004\b\u0000\u0010%\"\n\b\u0001\u0010&*\u0004\u0018\u00010\u001f2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010'J\u0010\u0010\u001e\u001a\u00020\u00042\b\u0010+\u001a\u0004\u0018\u00010*J\u0018\u0010.\u001a\u0004\u0018\u00010\u00022\u0006\u0010,\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\fJ\u0012\u00100\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u0002J\u0012\u00100\u001a\u0004\u0018\u00010\u00022\b\u00102\u001a\u0004\u0018\u000101J\u0012\u00103\u001a\u0004\u0018\u00010\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u00104\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u0002J\u0016\u00106\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002J\u001c\u00109\u001a\b\u0012\u0004\u0012\u00020\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u00108\u001a\u000207J\u001e\u00100\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010:\u001a\u0002072\u0006\u00108\u001a\u000207J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u000201J\u001e\u0010?\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0002J\u0010\u0010@\u001a\u0002072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002J\u000e\u0010@\u001a\u0002072\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u000207J\u0010\u0010B\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0010\u0010C\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0010\u0010D\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u000e\u0010D\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011J\u0018\u0010D\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010E\u001a\u00020\bJ\u0016\u0010D\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010E\u001a\u00020\bJ\u000e\u0010I\u001a\u00020H2\u0006\u0010G\u001a\u00020FJ\u000e\u0010K\u001a\u00020J2\u0006\u0010G\u001a\u00020FJ\u000e\u0010L\u001a\u00020\f2\u0006\u0010G\u001a\u00020FJ\u0010\u0010M\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0010\u0010N\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0016\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00110\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u001e\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00110S2\u0006\u0010P\u001a\u00020\u00022\b\u0010R\u001a\u0004\u0018\u00010QJ\u0010\u0010T\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0010\u0010U\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u000e\u0010V\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002J\u001e\u0010X\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010W\u001a\u0002012\u0006\u0010A\u001a\u00020\fJ\u0016\u0010X\u001a\u00020\b2\u0006\u0010/\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u001a\u0010X\u001a\u00020\b2\b\u0010W\u001a\u0004\u0018\u0001012\b\u0010Y\u001a\u0004\u0018\u00010\u0011J\u001a\u0010Z\u001a\u00020\b2\b\u0010/\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002J\u001a\u0010Z\u001a\u00020\b2\b\u0010/\u001a\u0004\u0018\u00010\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u001a\u0010Z\u001a\u00020\b2\b\u0010[\u001a\u0004\u0018\u0001012\b\u0010Y\u001a\u0004\u0018\u00010\u0011J\u001e\u0010\\\u001a\u0002012\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010:\u001a\u0002072\u0006\u00108\u001a\u000207J0\u0010a\u001a\b\u0012\u0004\u0012\u00020\u00020\"2\b\b\u0002\u0010]\u001a\u00020\u00022\b\b\u0002\u0010^\u001a\u00020\u00022\u000e\b\u0002\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00020_J\u001e\u0010f\u001a\u00020\b2\u0006\u0010c\u001a\u00020b2\u0006\u0010d\u001a\u00020\u00022\u0006\u0010e\u001a\u00020\u0011J\u001e\u0010h\u001a\u00020\u00042\u0006\u0010c\u001a\u00020b2\u0006\u0010g\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J \u0010i\u001a\u00020\b2\u0006\u0010c\u001a\u00020b2\u0006\u0010,\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0002J\"\u0010k\u001a\u00020\u00022\u0006\u0010c\u001a\u00020b2\b\u0010j\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0002J\u001e\u0010l\u001a\u00020\b2\u0006\u0010c\u001a\u00020b2\u0006\u0010d\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010m\u001a\u00020\u00022\b\u0010,\u001a\u0004\u0018\u00010\u0002J\u001e\u0010o\u001a\u00020\u00112\u0006\u0010n\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0002J-\u0010r\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0016\u0010q\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020p\"\u0004\u0018\u00010\u0002¢\u0006\u0004\br\u0010sJ\u0010\u0010t\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002J\u000e\u0010u\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011J \u0010v\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\"2\u0006\u0010c\u001a\u00020b2\b\u0010,\u001a\u0004\u0018\u00010\u0002J\u000e\u0010w\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0002J\u0016\u0010z\u001a\u00020\u00022\u0006\u0010x\u001a\u00020\u00022\u0006\u0010y\u001a\u00020\u0002J\u000e\u0010{\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002J\u0016\u0010{\u001a\u00020\u00022\u0006\u0010|\u001a\u00020\u00022\u0006\u0010}\u001a\u00020\u0002J\u001d\u0010~\u001a\u00020\b*\u0004\u0018\u00010\u0002\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000J\f\u0010\u007f\u001a\u00020\b*\u0004\u0018\u00010\u0002J\r\u0010\u0080\u0001\u001a\u00020\u0004*\u0004\u0018\u00010\u0002J-\u0010\u0085\u0001\u001a\u00020\u0004*\u00020\u00112\u0012\b\u0002\u0010\u0082\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0081\u00012\f\b\u0002\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u0001J\r\u0010\u0086\u0001\u001a\u00020\b*\u0004\u0018\u00010\u0002J\r\u0010\u0087\u0001\u001a\u00020\u0002*\u0004\u0018\u00010\u0002J\r\u0010\u0088\u0001\u001a\u00020\u0002*\u0004\u0018\u00010\u0002J\u0012\u0010\u008a\u0001\u001a\u00020\b*\t\u0012\u0005\u0012\u00030\u0089\u00010\"JE\u0010\u008f\u0001\u001a\u00020\u00022\u0007\u0010\u008b\u0001\u001a\u00020\u00022\u0006\u0010j\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00022\t\b\u0002\u0010\u008c\u0001\u001a\u00020\f2\u0016\b\u0002\u0010\u008e\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\b0\u008d\u0001J\u001d\u0010\u0092\u0001\u001a\u0002072\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u001e\u0010\u0095\u0001\u001a\u0002072\n\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00012\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0011J\u000b\u0010\u0096\u0001\u001a\u00020\u0002*\u00020\u0002J\u000b\u0010\u0096\u0001\u001a\u00020\u0011*\u00020\u0011J\u001a\u0010\u0098\u0001\u001a\u00020\u00022\u0006\u0010|\u001a\u00020\u00022\t\b\u0002\u0010\u0097\u0001\u001a\u00020\u0002J\u001a\u0010\u0099\u0001\u001a\u00020\u00022\u0006\u0010|\u001a\u00020\u00022\t\b\u0002\u0010\u0097\u0001\u001a\u00020\u0002R\u0017\u0010\u009a\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0017\u0010\u009c\u0001\u001a\u00020\f8\u0006X\u0086T¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R#\u0010¢\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0081\u00018\u0006¢\u0006\u0010\n\u0006\b\u009e\u0001\u0010\u009f\u0001\u001a\u0006\b \u0001\u0010¡\u0001R#\u0010¥\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0081\u00018\u0006¢\u0006\u0010\n\u0006\b£\u0001\u0010\u009f\u0001\u001a\u0006\b¤\u0001\u0010¡\u0001¨\u0006¨\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/FileUtils;", "", "", CouchFieldKey.KEY_LOCAL_FILE_PATH, "", C6998g.f39679a, "", "c", "", "i", "Ljava/lang/StringBuilder;", "res", "", "maxBytes", "j", "path", "fileExist", "Ljava/io/File;", "file", "filePath", "getDisplayFileSize", "fileExtension", "combine", "dirPath", "name", "combinePath", "mkdirs", Constants.GET_PARENT, "Landroid/database/Cursor;", "cursor", "closeQuietly", "Ljava/io/Closeable;", "closeable", "T", "", "closeableList", "closeList", "K", "V", "", "closeableMap", "closeMap", "Landroid/os/ParcelFileDescriptor;", "parcelFileDescriptor", HuaweiYunQueryArgs.FILE_NAME, "dotIndex", "fixNotAllowFileName", "content", "computeMD5", "", "buffer", "computeFullMD5Checksum", "computeFullMD5Safely", CouchFieldKey.KEY_MD5, "checkMD5WithDelete", "", "limit", "computeSliceMD5", TypedValues.CycleType.S_WAVE_OFFSET, "out", "hexToString", CouchFieldKey.KEY_DIR, "ext", "getFile", "getFileSize", "size", "ensureFileExists", "isEmpty", "deleteFile", "recursive", "Ljava/nio/channels/FileChannel;", "channel", "", "readShort", "", "readFloat", "readInt", "fileCanRead", "fileCanWrite", "listAllFiles", "directory", "Ljava/io/FilenameFilter;", "filter", "Ljava/util/LinkedList;", "readContentOfFile", "readContentOfFileSafely", "filterFileName", "appendData", "appendContentToFile", "fileForSave", "saveContentToFile", "saveData", "getBlock", "parentDir", "suffix", "", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "getAssetFiles", "Landroid/content/Context;", "context", "assetPath", "targetFile", "copyAssetFile", "assetFilePath", "copyAssetsDirectory", "isFileExistsInAssets", "fileBaseName", "fileNameInAssets", "copyAssetsFile", "getFileExtension", "group", "getCacheFile", "", "extraKeys", "getCacheKey", "(Ljava/io/File;[Ljava/lang/String;)Ljava/lang/String;", "buildValidFatFilename", "updateMtpDb", "readAssetsContent", "readAssetsContentAsString", "baseName", "extension", "concatFileName", "getValidFileName", "baseFileName", "extendedName", "isFileExist", "isDirectory", "deleteDirectory", "Ljava/util/Comparator;", "comparator", "Ljava/io/FileFilter;", "fileFilter", "deleteDirectoryQuietly", "deleteFileExt", "getFileBaseName", "getFileName", "Landroid/net/Uri;", "isImageFile", "fileDir", "tryTimes", "Lkotlin/Function1;", "accept", "generateUniqueFileName", "Ljava/io/InputStream;", "inputStream", "copyToFile", "source", FirebaseAnalytics.Param.DESTINATION, "copyInputStreamToFile", "appendSuffixIfExist", "replacement", "replaceRelativePathChar", "replacePrefixDotChar", "FILE_EXTENSION_CHAR", Constants.STRING_SIG, "MAX_FILE_NAME_LENGTH", "I", "a", "Ljava/util/Comparator;", "getFILE_MODIFIED_ASC_COMPARATOR", "()Ljava/util/Comparator;", "FILE_MODIFIED_ASC_COMPARATOR", "b", "getFILE_MODIFIED_DESC_COMPARATOR", "FILE_MODIFIED_DESC_COMPARATOR", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtils.kt\ncom/onyx/android/sdk/base/utils/FileUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,986:1\n1#2:987\n215#3,2:988\n32#4,5:990\n32#4,5:995\n32#4,5:1000\n3792#5:1005\n4307#5,2:1006\n13309#5,2:1010\n13309#5,2:1012\n13309#5,2:1014\n3792#5:1039\n4307#5,2:1040\n1855#6,2:1008\n1855#6,2:1046\n107#7:1016\n79#7,22:1017\n37#8,2:1042\n37#8,2:1044\n*S KotlinDebug\n*F\n+ 1 FileUtils.kt\ncom/onyx/android/sdk/base/utils/FileUtils\n*L\n142#1:988,2\n538#1:990,5\n545#1:995,5\n552#1:1000,5\n581#1:1005\n581#1:1006,2\n600#1:1010,2\n619#1:1012,2\n635#1:1014,2\n847#1:1039\n847#1:1040,2\n586#1:1008,2\n891#1:1046,2\n772#1:1016\n772#1:1017,22\n848#1:1042,2\n853#1:1044,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FileUtils {

    @NotNull
    public static final String FILE_EXTENSION_CHAR = ".";
    public static final int MAX_FILE_NAME_LENGTH = 254;

    @NotNull
    public static final FileUtils INSTANCE = new FileUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Comparator<File> FILE_MODIFIED_ASC_COMPARATOR = new Comparator() { // from class: com.sunia.HTREnginev2.fig
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m32073e;
            m32073e = FileUtils.m32073e((File) obj, (File) obj2);
            return m32073e;
        }
    };

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Comparator<File> FILE_MODIFIED_DESC_COMPARATOR = new Comparator() { // from class: com.sunia.HTREnginev2.mig
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m32074f;
            m32074f = FileUtils.m32074f((File) obj, (File) obj2);
            return m32074f;
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void deleteDirectoryQuietly$default(FileUtils fileUtils, File file, Comparator comparator, FileFilter fileFilter, int i, Object obj) {
        if ((i & 1) != 0) {
            comparator = null;
        }
        if ((i & 2) != 0) {
            fileFilter = null;
        }
        fileUtils.deleteDirectoryQuietly(file, comparator, fileFilter);
    }

    /* renamed from: e */
    public static final int m32073e(File file, File file2) {
        return Intrinsics.compare(file.lastModified(), file2.lastModified());
    }

    /* renamed from: f */
    public static final int m32074f(File file, File file2) {
        return Intrinsics.compare(file2.lastModified(), file.lastModified());
    }

    public static /* synthetic */ String fileNameInAssets$default(FileUtils fileUtils, Context context, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = "";
        }
        return fileUtils.fileNameInAssets(context, str, str2);
    }

    public static /* synthetic */ String generateUniqueFileName$default(FileUtils fileUtils, String str, String str2, String str3, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str3 = "";
        }
        String str4 = str3;
        if ((i2 & 8) != 0) {
            i = 254;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            function1 = new Function1<File, Boolean>() { // from class: com.onyx.android.sdk.base.utils.FileUtils$generateUniqueFileName$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull File it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(!it2.exists());
                }
            };
        }
        return fileUtils.generateUniqueFileName(str, str2, str4, i3, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List getAssetFiles$default(FileUtils fileUtils, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        if ((i & 2) != 0) {
            str2 = "";
        }
        if ((i & 4) != 0) {
            list = new ArrayList();
        }
        return fileUtils.getAssetFiles(str, str2, list);
    }

    /* renamed from: h */
    public static final void m32075h(File file) {
        if (!file.isDirectory()) {
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(file);
            return;
        }
        FileUtils fileUtils = INSTANCE;
        Intrinsics.checkNotNull(file);
        deleteDirectoryQuietly$default(fileUtils, file, null, null, 3, null);
    }

    public static /* synthetic */ boolean isFileExistsInAssets$default(FileUtils fileUtils, Context context, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = "";
        }
        return fileUtils.isFileExistsInAssets(context, str, str2);
    }

    /* renamed from: k */
    public static final void m32076k(String str, Uri uri) {
        Debug.INSTANCE.m32052i(INSTANCE.getClass(), "file " + str + " was scanned successfully: " + uri, new Object[0]);
    }

    public static /* synthetic */ String replacePrefixDotChar$default(FileUtils fileUtils, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "_";
        }
        return fileUtils.replacePrefixDotChar(str, str2);
    }

    public static /* synthetic */ String replaceRelativePathChar$default(FileUtils fileUtils, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return fileUtils.replaceRelativePathChar(str, str2);
    }

    public final boolean appendContentToFile(@NotNull String filePath, @NotNull byte[] appendData, int size) throws IOException {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(appendData, "appendData");
        File file = new File(filePath);
        ensureFileExists(filePath);
        FileChannel fileChannel = null;
        try {
            try {
                ByteBuffer wrap = ByteBuffer.wrap(appendData, 0, size);
                fileChannel = new RandomAccessFile(file, "rw").getChannel();
                fileChannel.write(wrap, getFileSize(filePath));
                closeQuietly(fileChannel);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                closeQuietly(fileChannel);
                return false;
            }
        } catch (Throwable th) {
            closeQuietly(fileChannel);
            throw th;
        }
    }

    @NotNull
    public final String appendSuffixIfExist(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String absolutePath = appendSuffixIfExist(new File(str)).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String buildValidFatFilename(@Nullable String name) {
        FileUtils fileUtils;
        String replaceRelativePathChar$default;
        String str = null;
        if (name != null && (replaceRelativePathChar$default = replaceRelativePathChar$default((fileUtils = INSTANCE), name, null, 2, null)) != null) {
            str = replacePrefixDotChar$default(fileUtils, replaceRelativePathChar$default, null, 2, null);
        }
        if (str == null || str.length() == 0) {
            return "_";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (m32078i(charAt)) {
                sb.append(charAt);
            } else {
                sb.append(NameUtil.USCORE);
            }
        }
        m32079j(sb, 254);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public final boolean checkMD5WithDelete(@NotNull String file, @NotNull String md5) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(md5, "md5");
        if (!fileExist(file) || StringKt.isEmpty(md5) || Intrinsics.areEqual(computeFullMD5Safely(file), md5)) {
            return true;
        }
        deleteFile(file);
        return false;
    }

    public final <T extends Closeable> void closeList(@NotNull List<? extends T> closeableList) {
        Intrinsics.checkNotNullParameter(closeableList, "closeableList");
        if (closeableList.isEmpty()) {
            return;
        }
        Iterator<? extends T> it2 = closeableList.iterator();
        while (it2.hasNext()) {
            closeQuietly(it2.next());
        }
    }

    public final <K, V extends Closeable> void closeMap(@NotNull Map<K, ? extends V> closeableMap) {
        Intrinsics.checkNotNullParameter(closeableMap, "closeableMap");
        Iterator<Map.Entry<K, ? extends V>> it2 = closeableMap.entrySet().iterator();
        while (it2.hasNext()) {
            INSTANCE.closeQuietly(it2.next().getValue());
        }
    }

    public final void closeQuietly(@Nullable Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Nullable
    public final String combine(@Nullable String filePath, @Nullable String fileExtension) {
        if (!StringUtils.isNotBlank(filePath) || !StringUtils.isNotBlank(fileExtension)) {
            return filePath;
        }
        return filePath + '.' + fileExtension;
    }

    @NotNull
    public final String combinePath(@Nullable String dirPath, @Nullable String name) {
        boolean endsWith$default;
        boolean startsWith$default;
        if (dirPath == null) {
            return name == null ? "" : name;
        }
        String str = File.separator;
        Intrinsics.checkNotNull(str);
        boolean z = false;
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(dirPath, str, false, 2, null);
        if (endsWith$default) {
            dirPath = dirPath.substring(0, dirPath.length() - 1);
            Intrinsics.checkNotNullExpressionValue(dirPath, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        if (name != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, str, false, 2, null);
            if (startsWith$default) {
                z = true;
            }
        }
        if (z) {
            name = StringUtils.replaceFirst(name, str, "");
        }
        return dirPath + str + name;
    }

    @Nullable
    public final String computeFullMD5Checksum(@Nullable File file) throws IOException, NoSuchAlgorithmException {
        FileInputStream fileInputStream;
        int read;
        Closeable closeable = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[65536];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            do {
                read = fileInputStream.read(bArr);
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                }
            } while (read != -1);
            byte[] digest = messageDigest.digest();
            Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
            String hexToString = hexToString(digest);
            closeQuietly(fileInputStream);
            return hexToString;
        } catch (Throwable th2) {
            th = th2;
            closeable = fileInputStream;
            closeQuietly(closeable);
            throw th;
        }
    }

    @Nullable
    public final String computeFullMD5Safely(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        try {
            return computeFullMD5Checksum(new File(filePath));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final String computeMD5(@Nullable String content) {
        if (StringUtils.isEmpty(content)) {
            return null;
        }
        Intrinsics.checkNotNull(content);
        Charset defaultCharset = Charset.defaultCharset();
        Intrinsics.checkNotNullExpressionValue(defaultCharset, "defaultCharset(...)");
        byte[] bytes = content.getBytes(defaultCharset);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return computeMD5(bytes);
    }

    @NotNull
    public final List<String> computeSliceMD5(@NotNull String filePath, long limit) throws Exception {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        ArrayList arrayList = new ArrayList();
        long fileSize = getFileSize(filePath);
        long j = 0;
        while (j < fileSize) {
            arrayList.add(computeMD5(filePath, j, limit));
            j += limit;
        }
        return arrayList;
    }

    @NotNull
    public final String concatFileName(@NotNull String baseName, @NotNull String extension) {
        Intrinsics.checkNotNullParameter(baseName, "baseName");
        Intrinsics.checkNotNullParameter(extension, "extension");
        return baseName + '.' + extension;
    }

    public final boolean copyAssetFile(@NotNull Context context, @NotNull String assetPath, @NotNull File targetFile) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetPath, "assetPath");
        Intrinsics.checkNotNullParameter(targetFile, "targetFile");
        String absolutePath = targetFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return copyAssetsFile(context, assetPath, absolutePath);
    }

    public final void copyAssetsDirectory(@NotNull Context context, @NotNull String assetFilePath, @NotNull String localFilePath) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetFilePath, "assetFilePath");
        Intrinsics.checkNotNullParameter(localFilePath, "localFilePath");
        try {
            AssetManager assets = context.getAssets();
            String[] list = assets.list(assetFilePath);
            if (ArraysKt.isNotEmpty(list)) {
                for (String str : list) {
                    String str2 = assetFilePath + '/' + str;
                    String str3 = localFilePath + '/' + str;
                    String[] list2 = assets.list(str2);
                    boolean z = true;
                    if (list2 != null) {
                        if (!(list2.length == 0)) {
                            z = false;
                        }
                    }
                    if (z) {
                        INSTANCE.copyAssetsFile(context, str2, str3);
                    } else {
                        INSTANCE.copyAssetsDirectory(context, str2, str3);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final boolean copyAssetsFile(@NotNull Context context, @NotNull String assetPath, @NotNull String localFilePath) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetPath, "assetPath");
        Intrinsics.checkNotNullParameter(localFilePath, "localFilePath");
        boolean z = false;
        try {
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (ensureFileExists(localFilePath)) {
                if (copyInputStreamToFile(context.getAssets().open(assetPath), new File(localFilePath)) >= 0) {
                    z = true;
                }
                return z;
            }
            Debug.INSTANCE.m32059w(FileUtils.class, "create file fail, path = " + localFilePath, new Object[0]);
            return false;
        } finally {
            m32077g(localFilePath);
        }
    }

    public final long copyInputStreamToFile(@Nullable InputStream source, @Nullable File destination) throws IOException {
        try {
            long copyToFile = INSTANCE.copyToFile(source, destination);
            CloseableKt.closeFinally(source, null);
            return copyToFile;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(source, th);
                throw th2;
            }
        }
    }

    public final long copyToFile(@Nullable InputStream inputStream, @Nullable File file) throws IOException {
        OutputStream newOutputStream = onyx.org.apache.commons.io.FileUtils.newOutputStream(file, false);
        try {
            long copyLarge = IOUtils.copyLarge(inputStream, newOutputStream);
            CloseableKt.closeFinally(newOutputStream, null);
            return copyLarge;
        } finally {
        }
    }

    public final void deleteDirectory(@Nullable String str) {
        if (StringKt.isEmpty(str) || !isDirectory(str)) {
            return;
        }
        onyx.org.apache.commons.io.FileUtils.deleteDirectory(new File(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        r9 = kotlin.collections.ArraysKt___ArraysKt.sortedWith(r10, r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void deleteDirectoryQuietly(@org.jetbrains.annotations.NotNull java.io.File r8, @org.jetbrains.annotations.Nullable java.util.Comparator<java.io.File> r9, @org.jetbrains.annotations.Nullable java.io.FileFilter r10) {
        /*
            r7 = this;
            java.lang.String r7 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r7)
            boolean r7 = r8.isDirectory()
            if (r7 != 0) goto Lc
            return
        Lc:
            java.io.File[] r7 = r8.listFiles()
            r0 = 0
            r1 = 0
            if (r10 == 0) goto L38
            if (r7 == 0) goto L36
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            int r3 = r7.length
            r4 = r0
        L1d:
            if (r4 >= r3) goto L2d
            r5 = r7[r4]
            boolean r6 = r10.accept(r5)
            if (r6 == 0) goto L2a
            r2.add(r5)
        L2a:
            int r4 = r4 + 1
            goto L1d
        L2d:
            java.io.File[] r10 = new java.io.File[r0]
            java.lang.Object[] r10 = r2.toArray(r10)
            java.io.File[] r10 = (java.io.File[]) r10
            goto L39
        L36:
            r10 = r1
            goto L39
        L38:
            r10 = r7
        L39:
            if (r9 == 0) goto L50
            if (r10 == 0) goto L4f
            java.util.List r9 = kotlin.collections.ArraysKt.sortedWith(r10, r9)
            if (r9 == 0) goto L4f
            java.util.Collection r9 = (java.util.Collection) r9
            java.io.File[] r10 = new java.io.File[r0]
            java.lang.Object[] r9 = r9.toArray(r10)
            java.io.File[] r9 = (java.io.File[]) r9
            r10 = r9
            goto L50
        L4f:
            r10 = r1
        L50:
            boolean r9 = com.onyx.android.sdk.base.utils.ArraysKt.isNotEmpty(r10)
            if (r9 == 0) goto L63
            com.sunia.HTREnginev2.oig r9 = new com.sunia.HTREnginev2.oig
            r9.<init>()
            int r0 = r10.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r10, r0)
            onyx.org.apache.commons.io.function.IOConsumer.forAll(r9, r0)
        L63:
            if (r10 == 0) goto L6b
            int r9 = r10.length
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            goto L6c
        L6b:
            r9 = r1
        L6c:
            if (r7 == 0) goto L73
            int r7 = r7.length
            java.lang.Integer r1 = java.lang.Integer.valueOf(r7)
        L73:
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r1)
            if (r7 == 0) goto L7c
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(r8)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.FileUtils.deleteDirectoryQuietly(java.io.File, java.util.Comparator, java.io.FileFilter):void");
    }

    public final boolean deleteFile(@Nullable String path) {
        if (StringUtils.isEmpty(path)) {
            return false;
        }
        Intrinsics.checkNotNull(path);
        return deleteFile(new File(path));
    }

    public final boolean deleteFileExt(@Nullable String str) {
        if (StringKt.isEmpty(str) || !isFileExist(str)) {
            return false;
        }
        File file = new File(str);
        if (file.isFile()) {
            return file.delete();
        }
        return false;
    }

    public final boolean ensureFileExists(@Nullable String path) {
        if (StringUtils.isEmpty(path)) {
            return false;
        }
        Intrinsics.checkNotNull(path);
        File file = new File(path);
        if (file.exists()) {
            return true;
        }
        try {
            onyx.org.apache.commons.io.FileUtils.forceMkdirParent(file);
            return file.createNewFile();
        } catch (IOException e) {
            Debug.INSTANCE.m32043e(FileUtils.class, "File creation failed", e);
            return false;
        }
    }

    public final boolean fileCanRead(@Nullable String path) {
        if (StringUtils.isEmpty(path)) {
            return false;
        }
        Intrinsics.checkNotNull(path);
        File file = new File(path);
        return file.exists() && file.canRead();
    }

    public final boolean fileCanWrite(@Nullable String path) {
        if (StringUtils.isEmpty(path)) {
            return false;
        }
        Intrinsics.checkNotNull(path);
        File file = new File(path);
        return file.exists() && file.canWrite();
    }

    public final boolean fileExist(@Nullable String path) {
        if (StringUtils.isEmpty(path)) {
            return false;
        }
        Intrinsics.checkNotNull(path);
        return fileExist(new File(path));
    }

    @NotNull
    public final String fileNameInAssets(@NotNull Context context, @Nullable String fileBaseName, @NotNull String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        if (fileBaseName == null) {
            return "";
        }
        try {
            String[] list = context.getAssets().list(path);
            if (list != null) {
                for (String str : list) {
                    if (Intrinsics.areEqual(INSTANCE.getFileBaseName(str), fileBaseName)) {
                        Intrinsics.checkNotNull(str);
                        return str;
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    @NotNull
    public final String filterFileName(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return StringUtils.isEmpty(fileName) ? fileName : new Regex("([*/^?|<>:\"\r\n])").replace(fileName, " ");
    }

    /* JADX WARN: Incorrect condition in loop: B:13:0x004e */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String fixNotAllowFileName(@org.jetbrains.annotations.NotNull java.lang.String r10, int r11) {
        /*
            r9 = this;
            java.lang.String r9 = "fileName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r9)
            boolean r9 = org.apache.commons.lang3.StringUtils.isBlank(r10)
            r0 = 0
            if (r9 == 0) goto Ld
            return r0
        Ld:
            kotlin.text.Regex r9 = new kotlin.text.Regex
        */
        //  java.lang.String r1 = "([*/^?|<>\r\n])"
        /*
            r9.<init>(r1)
            java.lang.String r1 = " "
            java.lang.String r2 = r9.replace(r10, r1)
            if (r11 < 0) goto L39
            int r9 = r10.length()
            if (r11 >= r9) goto L39
            java.lang.String r3 = r2.substring(r11)
            java.lang.String r9 = "this as java.lang.String).substring(startIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r9)
            java.lang.String r4 = r10.substring(r11)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r9)
            r5 = 0
            r6 = 4
            r7 = 0
            java.lang.String r2 = kotlin.text.StringsKt.replace$default(r2, r3, r4, r5, r6, r7)
        L39:
            r3 = r2
            java.lang.String r4 = ":"
            java.lang.String r5 = "："
            r6 = 0
            r7 = 4
            r8 = 0
            java.lang.String r9 = kotlin.text.StringsKt.replace$default(r3, r4, r5, r6, r7, r8)
            r10 = 0
        L46:
            r11 = r10
        L47:
            r1 = 2
            java.lang.String r2 = "\""
            boolean r1 = kotlin.text.StringsKt.contains$default(r9, r2, r10, r1, r0)
            if (r1 == 0) goto L6b
            if (r11 != 0) goto L5f
            kotlin.text.Regex r11 = new kotlin.text.Regex
            r11.<init>(r2)
            java.lang.String r1 = "“"
            java.lang.String r9 = r11.replaceFirst(r9, r1)
            r11 = 1
            goto L47
        L5f:
            kotlin.text.Regex r11 = new kotlin.text.Regex
            r11.<init>(r2)
            java.lang.String r1 = "”"
            java.lang.String r9 = r11.replaceFirst(r9, r1)
            goto L46
        L6b:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.FileUtils.fixNotAllowFileName(java.lang.String, int):java.lang.String");
    }

    /* renamed from: g */
    public final void m32077g(String localFilePath) {
        try {
            if (fileExist(localFilePath) && getFileSize(localFilePath) == 0) {
                deleteFile(localFilePath);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @NotNull
    public final String generateUniqueFileName(@NotNull String fileDir, @NotNull String fileBaseName, @NotNull String fileExtension, int tryTimes, @NotNull Function1<? super File, Boolean> accept) {
        Intrinsics.checkNotNullParameter(fileDir, "fileDir");
        Intrinsics.checkNotNullParameter(fileBaseName, "fileBaseName");
        Intrinsics.checkNotNullParameter(fileExtension, "fileExtension");
        Intrinsics.checkNotNullParameter(accept, "accept");
        int i = 0;
        String str = fileBaseName;
        while (true) {
            String combine = combine(str, fileExtension);
            Intrinsics.checkNotNull(combine);
            if (combine.length() > 254 - fileExtension.length()) {
                combine = combine(UUID.randomUUID().toString(), fileExtension);
                Intrinsics.checkNotNull(combine);
            }
            File file = new File(combinePath(fileDir, combine));
            if (accept.invoke(file).booleanValue()) {
                String combine2 = combine(str, fileExtension);
                Intrinsics.checkNotNull(combine2);
                return combine2;
            }
            int i2 = i + 1;
            if (i == tryTimes) {
                throw new FileAlreadyExistsException(file, null, null, 6, null);
            }
            str = fileBaseName + '(' + i2 + ')';
            i = i2;
        }
    }

    @NotNull
    public final List<String> getAssetFiles(@NotNull String parentDir, @NotNull String suffix, @NotNull List<String> result) {
        boolean endsWith;
        Intrinsics.checkNotNullParameter(parentDir, "parentDir");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        Intrinsics.checkNotNullParameter(result, "result");
        String[] list = ResManager.INSTANCE.getAppContext().getAssets().list(parentDir);
        if (list == null) {
            list = new String[0];
        }
        ArrayList<String> arrayList = new ArrayList();
        for (String str : list) {
            boolean z = true;
            if (!StringKt.isEmpty(suffix)) {
                Intrinsics.checkNotNull(str);
                endsWith = StringsKt__StringsJVMKt.endsWith(str, suffix, true);
                if (!endsWith) {
                    z = false;
                }
            }
            if (z) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return result;
        }
        result.addAll(arrayList);
        for (String str2 : arrayList) {
            FileUtils fileUtils = INSTANCE;
            Intrinsics.checkNotNull(str2);
            fileUtils.getAssetFiles(str2, suffix, result);
        }
        return result;
    }

    @NotNull
    public final byte[] getBlock(@NotNull String filePath, long offset, long limit) throws NoSuchAlgorithmException, IOException {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        FileInputStream fileInputStream = new FileInputStream(filePath);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                channel.position(offset);
                ByteBuffer allocate = ByteBuffer.allocate((int) Math.min(onyx.org.apache.commons.io.FileUtils.sizeOf(new File(filePath)) - offset, limit));
                channel.read(allocate);
                byte[] array = allocate.array();
                Intrinsics.checkNotNullExpressionValue(array, "array(...)");
                CloseableKt.closeFinally(channel, null);
                CloseableKt.closeFinally(fileInputStream, null);
                return array;
            } finally {
            }
        } finally {
        }
    }

    @NotNull
    public final File getCacheFile(@NotNull String group, @NotNull String name, @NotNull String ext) {
        Intrinsics.checkNotNullParameter(group, "group");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ext, "ext");
        String absolutePath = ResManager.INSTANCE.getAppContext().getCacheDir().getAbsolutePath();
        Intrinsics.checkNotNull(absolutePath);
        Path path = Paths.get(absolutePath, new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(path)");
        File file = path.resolve(group).resolve(name + '.' + ext).toFile();
        if (!file.exists()) {
            file.getParentFile().mkdirs();
            file.createNewFile();
        }
        Intrinsics.checkNotNull(file);
        return file;
    }

    @NotNull
    public final String getCacheKey(@NotNull File file, @NotNull String... extraKeys) {
        List listOf;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(extraKeys, "extraKeys");
        if (!fileExist(file)) {
            return "";
        }
        String str = file.getAbsolutePath() + '-' + file.length() + '-' + file.lastModified();
        if (!ArraysKt.isNotEmpty(extraKeys)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(extraKeys, extraKeys.length));
        sb.append(listOf);
        return sb.toString();
    }

    @NotNull
    public final String getDisplayFileSize(@Nullable String filePath) {
        return getFileSize(getFileSize(filePath));
    }

    @NotNull
    public final Comparator<File> getFILE_MODIFIED_ASC_COMPARATOR() {
        return FILE_MODIFIED_ASC_COMPARATOR;
    }

    @NotNull
    public final Comparator<File> getFILE_MODIFIED_DESC_COMPARATOR() {
        return FILE_MODIFIED_DESC_COMPARATOR;
    }

    @NotNull
    public final String getFile(@NotNull String dir, @NotNull String name, @NotNull String ext) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ext, "ext");
        String trimLeftChars = StringKt.trimLeftChars(ext, ".");
        if (!StringKt.isEmpty(trimLeftChars)) {
            name = name + '.' + trimLeftChars;
        }
        Path path = Paths.get(dir, (String[]) Arrays.copyOf(new String[]{name}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path.toString();
    }

    @NotNull
    public final String getFileBaseName(@Nullable String str) {
        String baseName = FilenameUtils.getBaseName(str);
        Intrinsics.checkNotNullExpressionValue(baseName, "getBaseName(...)");
        return baseName;
    }

    @NotNull
    public final String getFileExtension(@Nullable String fileName) {
        String extension;
        if (fileName == null || fileName.length() == 0) {
            return "";
        }
        extension = FilesKt__UtilsKt.getExtension(new File(fileName));
        String lowerCase = extension.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @NotNull
    public final String getFileName(@Nullable String str) {
        if (str == null) {
            return "";
        }
        String name = new File(str).getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return name;
    }

    public final long getFileSize(@Nullable String filePath) {
        if (StringUtils.isEmpty(filePath)) {
            return 0L;
        }
        Intrinsics.checkNotNull(filePath);
        return getFileSize(new File(filePath));
    }

    @Nullable
    public final String getParent(@Nullable String path) {
        File file = path != null ? new File(path) : null;
        return file != null ? file.getParent() : "";
    }

    @NotNull
    public final String getValidFileName(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        String extension = FilenameUtils.getExtension(fileName);
        Intrinsics.checkNotNull(extension);
        if (extension.length() > 0) {
            extension = '.' + extension;
        }
        String baseName = FilenameUtils.getBaseName(fileName);
        Intrinsics.checkNotNullExpressionValue(baseName, "getBaseName(...)");
        Intrinsics.checkNotNull(extension);
        return getValidFileName(baseName, extension);
    }

    @NotNull
    public final String hexToString(@NotNull byte[] out) {
        Intrinsics.checkNotNullParameter(out, "out");
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[out.length * 2];
        int length = out.length;
        for (int i = 0; i < length; i++) {
            int i2 = i << 1;
            byte b = out[i];
            cArr2[i2] = cArr[(b >> 4) & 15];
            cArr2[i2 + 1] = cArr[b & 15];
        }
        return new String(cArr2);
    }

    /* renamed from: i */
    public final boolean m32078i(char c) {
        if (c < 0 || c > 31) {
            return !(((((((((c == '\"' || c == '*') || c == '/') || c == ':') || c == '<') || c == '>') || c == '?') || c == '\\') || c == '|') || c == 127);
        }
        return false;
    }

    public final boolean isDirectory(@Nullable String str) {
        if (StringKt.isEmpty(str) || !isFileExist(str)) {
            return false;
        }
        return new File(str).isDirectory();
    }

    public final boolean isEmpty(@Nullable String path) {
        return !fileExist(path) || getFileSize(path) <= 0;
    }

    public final boolean isFileExist(@Nullable String str) {
        if (StringKt.isEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public final boolean isFileExistsInAssets(@NotNull Context context, @NotNull String fileName, @NotNull String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            String[] list = context.getAssets().list(path);
            if (list != null) {
                for (String str : list) {
                    if (Intrinsics.areEqual(str, fileName)) {
                        return true;
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }

    public final boolean isImageFile(@NotNull List<? extends Uri> list) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String type = ResManager.INSTANCE.getAppContext().getContentResolver().getType((Uri) it2.next());
            if (type == null) {
                type = "";
            }
            Intrinsics.checkNotNull(type);
            String lowerCase = type.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(lowerCase, "image", false, 2, null);
            if (!startsWith$default) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: j */
    public final void m32079j(StringBuilder res, int maxBytes) {
        String sb = res.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "toString(...)");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = sb.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        if (bytes.length > maxBytes) {
            int i = maxBytes - 3;
            while (bytes.length > i) {
                res.deleteCharAt(res.length() / 2);
                String sb2 = res.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
                Charset UTF_82 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_82, "UTF_8");
                bytes = sb2.getBytes(UTF_82);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            }
            res.insert(res.length() / 2, RemoveAudioAction.f58149k);
        }
    }

    @NotNull
    public final List<File> listAllFiles(@Nullable String path) {
        List<File> list;
        LinkedList linkedList = new LinkedList();
        if (!fileExist(path)) {
            return linkedList;
        }
        Intrinsics.checkNotNull(path);
        File file = new File(path);
        if (!file.isDirectory()) {
            return linkedList;
        }
        Collection<File> listFiles = onyx.org.apache.commons.io.FileUtils.listFiles(file, (String[]) null, true);
        Intrinsics.checkNotNullExpressionValue(listFiles, "listFiles(...)");
        list = CollectionsKt___CollectionsKt.toList(listFiles);
        return list;
    }

    public final boolean mkdirs(@Nullable String path) {
        if (StringUtils.isEmpty(path)) {
            return false;
        }
        Intrinsics.checkNotNull(path);
        return mkdirs(new File(path));
    }

    @Nullable
    public final List<String> readAssetsContent(@NotNull Context context, @Nullable String fileName) {
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        try {
            AssetManager assets = context.getResources().getAssets();
            if (fileName == null) {
                fileName = "";
            }
            InputStream open = assets.open(fileName);
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(open, StandardCharsets.UTF_8);
                try {
                    BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                Unit unit = Unit.INSTANCE;
                                CloseableKt.closeFinally(bufferedReader, null);
                                CloseableKt.closeFinally(inputStreamReader, null);
                                CloseableKt.closeFinally(open, null);
                                return arrayList;
                            }
                            Intrinsics.checkNotNull(readLine);
                            int length = readLine.length() - 1;
                            int i = 0;
                            boolean z = false;
                            while (i <= length) {
                                boolean z2 = Intrinsics.compare((int) readLine.charAt(!z ? i : length), 32) <= 0;
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
                            arrayList.add(readLine.subSequence(i, length + 1).toString());
                        } finally {
                        }
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final String readAssetsContentAsString(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        InputStream open = ResManager.INSTANCE.getAppContext().getResources().getAssets().open(path);
        try {
            Intrinsics.checkNotNull(open);
            Reader inputStreamReader = new InputStreamReader(open, Charsets.UTF_8);
            String readText = TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
            CloseableKt.closeFinally(open, null);
            return readText;
        } finally {
        }
    }

    @NotNull
    public final String readContentOfFile(@Nullable String path) throws IOException {
        final StringBuilder sb = new StringBuilder();
        if (path == null) {
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            return sb2;
        }
        Reader inputStreamReader = new InputStreamReader(new FileInputStream(new File(path)), Charsets.UTF_8);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            TextStreamsKt.forEachLine(bufferedReader, new Function1<String, Unit>() { // from class: com.onyx.android.sdk.base.utils.FileUtils$readContentOfFile$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull String line) {
                    Intrinsics.checkNotNullParameter(line, "line");
                    sb.append(line);
                }
            });
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedReader, null);
            String sb3 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            return sb3;
        } finally {
        }
    }

    @NotNull
    public final String readContentOfFileSafely(@Nullable String path) {
        try {
            return readContentOfFile(path);
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            return "";
        }
    }

    public final float readFloat(@NotNull FileChannel channel) throws IOException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return Float.intBitsToFloat(readInt(channel));
    }

    public final int readInt(@NotNull FileChannel channel) throws IOException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        ByteBuffer allocate = ByteBuffer.allocate(4);
        channel.read(allocate);
        return allocate.getInt(0);
    }

    public final short readShort(@NotNull FileChannel channel) throws IOException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        ByteBuffer allocate = ByteBuffer.allocate(2);
        channel.read(allocate);
        return allocate.getShort(0);
    }

    @NotNull
    public final String replacePrefixDotChar(@NotNull String baseFileName, @NotNull String replacement) {
        boolean startsWith$default;
        String repeat;
        Intrinsics.checkNotNullParameter(baseFileName, "baseFileName");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(baseFileName, ".", false, 2, null);
        if (!startsWith$default) {
            return baseFileName;
        }
        Matcher matcher = Pattern.compile("^\\.+").matcher(baseFileName);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            repeat = StringsKt__StringsJVMKt.repeat(replacement, matcher.group().length());
            matcher.appendReplacement(stringBuffer, repeat);
        }
        matcher.appendTail(stringBuffer);
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
        return stringBuffer2;
    }

    @NotNull
    public final String replaceRelativePathChar(@NotNull String baseFileName, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(baseFileName, "baseFileName");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        return new Regex("\\.\\./").replace(baseFileName, replacement);
    }

    public final boolean saveContentToFile(@Nullable String content, @Nullable String filePath) {
        boolean z = true;
        if (!(content == null)) {
            if (filePath != null && filePath.length() != 0) {
                z = false;
            }
            if (!z) {
                Intrinsics.checkNotNull(content);
                Charset forName = Charset.forName("utf-8");
                Intrinsics.checkNotNullExpressionValue(forName, "forName(charsetName)");
                byte[] bytes = content.getBytes(forName);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                return saveContentToFile(bytes, new File(filePath));
            }
        }
        return false;
    }

    public final void updateMtpDb(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Context appContext = ResManager.INSTANCE.getAppContext();
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        MediaScannerConnection.scanFile(appContext, new String[]{absolutePath}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.sunia.HTREnginev2.thg
            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public final void onScanCompleted(String str, Uri uri) {
                FileUtils.m32076k(str, uri);
            }
        });
    }

    @NotNull
    public final File appendSuffixIfExist(@NotNull File file) {
        String nameWithoutExtension;
        String extension;
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (!file.exists()) {
            return file;
        }
        nameWithoutExtension = FilesKt__UtilsKt.getNameWithoutExtension(file);
        extension = FilesKt__UtilsKt.getExtension(file);
        ResManager resManager = ResManager.INSTANCE;
        int integer = (resManager.getInteger(C7106R.integer.max_filename_length) - resManager.getInteger(C7106R.integer.preserved_suffix_length)) - extension.length();
        int i = 1;
        int i2 = integer - 1;
        if (nameWithoutExtension.length() > i2) {
            nameWithoutExtension = nameWithoutExtension.substring(0, i2);
            Intrinsics.checkNotNullExpressionValue(nameWithoutExtension, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        while (true) {
            File file2 = new File(file.getParentFile(), nameWithoutExtension + NameUtil.USCORE + i + '.' + extension);
            if (!file2.exists()) {
                return file2;
            }
            i++;
        }
    }

    public final void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Nullable
    public final String computeMD5(@Nullable byte[] buffer) {
        if (buffer == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(buffer, 0, buffer.length);
            byte[] digest = messageDigest.digest();
            Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
            return hexToString(digest);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final boolean deleteFile(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return onyx.org.apache.commons.io.FileUtils.deleteQuietly(file);
    }

    public final boolean fileExist(@Nullable File file) {
        return file != null && file.exists();
    }

    public final long getFileSize(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!file.exists()) {
            return 0L;
        }
        try {
            return onyx.org.apache.commons.io.FileUtils.sizeOf(file);
        } catch (Exception unused) {
            return 0L;
        }
    }

    public final boolean mkdirs(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (file.exists()) {
            return file.isDirectory();
        }
        return file.mkdirs();
    }

    public final boolean saveContentToFile(@Nullable String content, @Nullable File file) {
        if (!(content == null)) {
            if (!(file == null)) {
                Intrinsics.checkNotNull(content);
                Charset forName = Charset.forName("utf-8");
                Intrinsics.checkNotNullExpressionValue(forName, "forName(charsetName)");
                byte[] bytes = content.getBytes(forName);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                return saveContentToFile(bytes, file);
            }
        }
        return false;
    }

    public final boolean deleteFile(@Nullable String filePath, boolean recursive) {
        return deleteFile(new File(filePath), recursive);
    }

    public final boolean saveContentToFile(@Nullable final byte[] saveData, @Nullable final File fileForSave) {
        if (!(saveData == null)) {
            if (!(fileForSave == null)) {
                return Result.m72628isSuccessimpl(AnyKt.runCatching$default(this, false, new Function1<FileUtils, Unit>() { // from class: com.onyx.android.sdk.base.utils.FileUtils$saveContentToFile$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(FileUtils fileUtils) {
                        invoke2(fileUtils);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull FileUtils runCatching) {
                        Intrinsics.checkNotNullParameter(runCatching, "$this$runCatching");
                        FileOutputStream fileOutputStream = new FileOutputStream(fileForSave);
                        try {
                            fileOutputStream.write(saveData);
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileOutputStream, null);
                        } finally {
                        }
                    }
                }, 1, null));
            }
        }
        return false;
    }

    public final void closeQuietly(@Nullable ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public final boolean deleteFile(@NotNull File file, boolean recursive) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (file.isFile()) {
            return deleteFile(file);
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            if (!(listFiles.length == 0)) {
                for (File file2 : listFiles) {
                    if (recursive) {
                        Intrinsics.checkNotNull(file2);
                        deleteFile(file2, true);
                    } else {
                        Intrinsics.checkNotNull(file2);
                        deleteFile(file2);
                    }
                }
                return deleteFile(file);
            }
        }
        return deleteFile(file);
    }

    @NotNull
    public final String getFileSize(long size) {
        DecimalFormat decimalFormat = new DecimalFormat("###.##");
        double d = size;
        double d2 = d / 1.099511627776E12d;
        if (d2 > 1.0d) {
            return decimalFormat.format(d2) + "TB";
        }
        double d3 = d / 1.073741824E9d;
        if (d3 > 1.0d) {
            return decimalFormat.format(d3) + "GB";
        }
        double d4 = d / 1048576.0d;
        if (d4 > 1.0d) {
            return decimalFormat.format(d4) + "MB";
        }
        return decimalFormat.format(d / 1024.0d) + "KB";
    }

    @NotNull
    public final LinkedList<File> listAllFiles(@NotNull String directory, @Nullable FilenameFilter filter) {
        Object removeFirst;
        Intrinsics.checkNotNullParameter(directory, "directory");
        LinkedList<File> linkedList = new LinkedList<>();
        if (!fileExist(directory) || !isDirectory(directory)) {
            return linkedList;
        }
        LinkedList linkedList2 = new LinkedList();
        linkedList2.add(new File(directory));
        while (!linkedList2.isEmpty()) {
            removeFirst = CollectionsKt__MutableCollectionsKt.removeFirst(linkedList2);
            Iterator it2 = ArrayIteratorKt.iterator(((File) removeFirst).listFiles(filter));
            while (it2.hasNext()) {
                File file = (File) it2.next();
                if (file.isDirectory()) {
                    linkedList2.add(file);
                } else {
                    linkedList.add(file);
                }
            }
        }
        return linkedList;
    }

    @NotNull
    public final String computeMD5(@NotNull String filePath, long offset, long limit) throws NoSuchAlgorithmException, IOException {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        FileInputStream fileInputStream = new FileInputStream(new File(filePath));
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                channel.position(offset);
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                long j = limit + offset;
                ByteBuffer allocate = ByteBuffer.allocate(65536);
                do {
                    channel.read(allocate);
                    int limit2 = allocate.limit();
                    if (limit2 > 0) {
                        messageDigest.update(allocate.array(), 0, (int) Math.min(j - offset, limit2));
                    }
                    allocate.clear();
                    offset += 65536;
                    if (limit2 == -1) {
                        break;
                    }
                } while (offset < j);
                FileUtils fileUtils = INSTANCE;
                byte[] digest = messageDigest.digest();
                Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
                String hexToString = fileUtils.hexToString(digest);
                CloseableKt.closeFinally(channel, null);
                CloseableKt.closeFinally(fileInputStream, null);
                return hexToString;
            } finally {
            }
        } finally {
        }
    }

    @NotNull
    public final String getValidFileName(@NotNull String baseFileName, @NotNull String extendedName) {
        Intrinsics.checkNotNullParameter(baseFileName, "baseFileName");
        Intrinsics.checkNotNullParameter(extendedName, "extendedName");
        StringBuilder sb = new StringBuilder();
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = extendedName.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        int length = 254 - bytes.length;
        sb.append(buildValidFatFilename(baseFileName));
        m32079j(sb, length);
        sb.append(extendedName);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public final boolean appendContentToFile(@NotNull String content, @NotNull File file) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            Charset forName = Charset.forName("utf-8");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(charsetName)");
            byte[] bytes = content.getBytes(forName);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            return appendContentToFile(absolutePath, bytes, bytes.length);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean appendContentToFile(@Nullable byte[] appendData, @Nullable File fileForSave) {
        FileOutputStream fileOutputStream;
        Closeable closeable = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(fileForSave, true);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            fileOutputStream.write(appendData);
            closeQuietly(fileOutputStream);
            return true;
        } catch (Exception e2) {
            e = e2;
            closeable = fileOutputStream;
            e.printStackTrace();
            closeQuietly(closeable);
            return false;
        } catch (Throwable th2) {
            th = th2;
            closeable = fileOutputStream;
            closeQuietly(closeable);
            throw th;
        }
    }
}
