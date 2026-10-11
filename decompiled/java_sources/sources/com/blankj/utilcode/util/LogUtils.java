package com.blankj.utilcode.util;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import com.blankj.utilcode.util.C1887b;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.commons.collections4.IteratorUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class LogUtils {

    /* renamed from: A */
    public static final int f13790A = 7;

    /* renamed from: D */
    public static final int f13791D = 3;

    /* renamed from: E */
    public static final int f13792E = 6;

    /* renamed from: I */
    public static final int f13793I = 4;

    /* renamed from: V */
    public static final int f13794V = 2;

    /* renamed from: W */
    public static final int f13795W = 5;

    /* renamed from: b */
    public static final int f13797b = 16;

    /* renamed from: c */
    public static final int f13798c = 32;

    /* renamed from: d */
    public static final int f13799d = 48;

    /* renamed from: g */
    public static final String f13802g = "┌";

    /* renamed from: h */
    public static final String f13803h = "├";

    /* renamed from: i */
    public static final String f13804i = "│ ";

    /* renamed from: j */
    public static final String f13805j = "└";

    /* renamed from: k */
    public static final String f13806k = "────────────────────────────────────────────────────────";

    /* renamed from: l */
    public static final String f13807l = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";

    /* renamed from: m */
    public static final String f13808m = "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────";

    /* renamed from: n */
    public static final String f13809n = "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";

    /* renamed from: o */
    public static final String f13810o = "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────";

    /* renamed from: p */
    public static final int f13811p = 1100;

    /* renamed from: q */
    public static final String f13812q = "log nothing";

    /* renamed from: r */
    public static final String f13813r = "null";

    /* renamed from: s */
    public static final String f13814s = "args";

    /* renamed from: t */
    public static final String f13815t = " ";

    /* renamed from: v */
    public static SimpleDateFormat f13817v;

    /* renamed from: a */
    public static final char[] f13796a = {'V', 'D', 'I', 'W', 'E', 'A'};

    /* renamed from: e */
    public static final String f13800e = System.getProperty("file.separator");

    /* renamed from: f */
    public static final String f13801f = System.getProperty("line.separator");

    /* renamed from: u */
    public static final Config f13816u = new Config(null);

    /* renamed from: w */
    public static final ExecutorService f13818w = Executors.newSingleThreadExecutor();

    /* renamed from: x */
    public static final SimpleArrayMap<Class, IFormatter> f13819x = new SimpleArrayMap<>();

    /* loaded from: classes3.dex */
    public static final class Config {

        /* renamed from: a */
        public String f13820a;

        /* renamed from: b */
        public String f13821b;

        /* renamed from: c */
        public String f13822c;

        /* renamed from: d */
        public String f13823d;

        /* renamed from: e */
        public boolean f13824e;

        /* renamed from: f */
        public boolean f13825f;

        /* renamed from: g */
        public String f13826g;

        /* renamed from: h */
        public boolean f13827h;

        /* renamed from: i */
        public boolean f13828i;

        /* renamed from: j */
        public boolean f13829j;

        /* renamed from: k */
        public boolean f13830k;

        /* renamed from: l */
        public boolean f13831l;

        /* renamed from: m */
        public int f13832m;

        /* renamed from: n */
        public int f13833n;

        /* renamed from: o */
        public int f13834o;

        /* renamed from: p */
        public int f13835p;

        /* renamed from: q */
        public int f13836q;

        /* renamed from: r */
        public String f13837r;

        /* renamed from: s */
        public IFileWriter f13838s;

        /* renamed from: t */
        public OnConsoleOutputListener f13839t;

        /* renamed from: u */
        public OnFileOutputListener f13840u;

        /* renamed from: v */
        public C1887b.a f13841v;

        public /* synthetic */ Config(RunnableC1821a runnableC1821a) {
            this();
        }

        public final Config addFileExtraHead(Map<String, String> map) {
            this.f13841v.m8547c(map);
            return this;
        }

        public final <T> Config addFormatter(IFormatter<T> iFormatter) {
            if (iFormatter != null) {
                LogUtils.f13819x.put(LogUtils.m8160s(iFormatter), iFormatter);
            }
            return this;
        }

        public final char getConsoleFilter() {
            return LogUtils.f13796a[this.f13832m - 2];
        }

        public final String getDefaultDir() {
            return this.f13820a;
        }

        public final String getDir() {
            String str = this.f13821b;
            return str == null ? this.f13820a : str;
        }

        public final String getFileExtension() {
            return this.f13823d;
        }

        public final char getFileFilter() {
            return LogUtils.f13796a[this.f13833n - 2];
        }

        public final String getFilePrefix() {
            return this.f13822c;
        }

        public final String getGlobalTag() {
            return C1887b.m8438D0(this.f13826g) ? "" : this.f13826g;
        }

        public final String getProcessName() {
            String str = this.f13837r;
            return str == null ? "" : str.replace(":", "_");
        }

        public final int getSaveDays() {
            return this.f13836q;
        }

        public final int getStackDeep() {
            return this.f13834o;
        }

        public final int getStackOffset() {
            return this.f13835p;
        }

        public final boolean haveSetOnConsoleOutputListener() {
            return this.f13839t != null;
        }

        public final boolean haveSetOnFileOutputListener() {
            return this.f13840u != null;
        }

        public final boolean isLog2ConsoleSwitch() {
            return this.f13825f;
        }

        public final boolean isLog2FileSwitch() {
            return this.f13829j;
        }

        public final boolean isLogBorderSwitch() {
            return this.f13830k;
        }

        public final boolean isLogHeadSwitch() {
            return this.f13828i;
        }

        public final boolean isLogSwitch() {
            return this.f13824e;
        }

        public final boolean isSingleTagSwitch() {
            return this.f13831l;
        }

        public final Config setBorderSwitch(boolean z) {
            this.f13830k = z;
            return this;
        }

        public final Config setConsoleFilter(int i) {
            this.f13832m = i;
            return this;
        }

        public final Config setConsoleSwitch(boolean z) {
            this.f13825f = z;
            return this;
        }

        public final Config setDir(String str) {
            if (C1887b.m8438D0(str)) {
                this.f13821b = null;
            } else {
                if (!str.endsWith(LogUtils.f13800e)) {
                    str = str + LogUtils.f13800e;
                }
                this.f13821b = str;
            }
            return this;
        }

        public final Config setFileExtension(String str) {
            if (C1887b.m8438D0(str)) {
                this.f13823d = LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION;
            } else if (str.startsWith(".")) {
                this.f13823d = str;
            } else {
                this.f13823d = "." + str;
            }
            return this;
        }

        public final Config setFileFilter(int i) {
            this.f13833n = i;
            return this;
        }

        public final Config setFilePrefix(String str) {
            if (C1887b.m8438D0(str)) {
                this.f13822c = "util";
            } else {
                this.f13822c = str;
            }
            return this;
        }

        public final Config setFileWriter(IFileWriter iFileWriter) {
            this.f13838s = iFileWriter;
            return this;
        }

        public final Config setGlobalTag(String str) {
            if (C1887b.m8438D0(str)) {
                this.f13826g = "";
                this.f13827h = true;
            } else {
                this.f13826g = str;
                this.f13827h = false;
            }
            return this;
        }

        public final Config setLog2FileSwitch(boolean z) {
            this.f13829j = z;
            return this;
        }

        public final Config setLogHeadSwitch(boolean z) {
            this.f13828i = z;
            return this;
        }

        public final Config setLogSwitch(boolean z) {
            this.f13824e = z;
            return this;
        }

        public final Config setOnConsoleOutputListener(OnConsoleOutputListener onConsoleOutputListener) {
            this.f13839t = onConsoleOutputListener;
            return this;
        }

        public final Config setOnFileOutputListener(OnFileOutputListener onFileOutputListener) {
            this.f13840u = onFileOutputListener;
            return this;
        }

        public final Config setSaveDays(@IntRange(from = 1) int i) {
            this.f13836q = i;
            return this;
        }

        public final Config setSingleTagSwitch(boolean z) {
            this.f13831l = z;
            return this;
        }

        public final Config setStackDeep(@IntRange(from = 1) int i) {
            this.f13834o = i;
            return this;
        }

        public final Config setStackOffset(@IntRange(from = 0) int i) {
            this.f13835p = i;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("process: ");
            sb.append(getProcessName());
            sb.append(LogUtils.f13801f);
            sb.append("logSwitch: ");
            sb.append(isLogSwitch());
            sb.append(LogUtils.f13801f);
            sb.append("consoleSwitch: ");
            sb.append(isLog2ConsoleSwitch());
            sb.append(LogUtils.f13801f);
            sb.append("tag: ");
            sb.append(getGlobalTag().equals("") ? "null" : getGlobalTag());
            sb.append(LogUtils.f13801f);
            sb.append("headSwitch: ");
            sb.append(isLogHeadSwitch());
            sb.append(LogUtils.f13801f);
            sb.append("fileSwitch: ");
            sb.append(isLog2FileSwitch());
            sb.append(LogUtils.f13801f);
            sb.append("dir: ");
            sb.append(getDir());
            sb.append(LogUtils.f13801f);
            sb.append("filePrefix: ");
            sb.append(getFilePrefix());
            sb.append(LogUtils.f13801f);
            sb.append("borderSwitch: ");
            sb.append(isLogBorderSwitch());
            sb.append(LogUtils.f13801f);
            sb.append("singleTagSwitch: ");
            sb.append(isSingleTagSwitch());
            sb.append(LogUtils.f13801f);
            sb.append("consoleFilter: ");
            sb.append(getConsoleFilter());
            sb.append(LogUtils.f13801f);
            sb.append("fileFilter: ");
            sb.append(getFileFilter());
            sb.append(LogUtils.f13801f);
            sb.append("stackDeep: ");
            sb.append(getStackDeep());
            sb.append(LogUtils.f13801f);
            sb.append("stackOffset: ");
            sb.append(getStackOffset());
            sb.append(LogUtils.f13801f);
            sb.append("saveDays: ");
            sb.append(getSaveDays());
            sb.append(LogUtils.f13801f);
            sb.append("formatter: ");
            sb.append(LogUtils.f13819x);
            sb.append(LogUtils.f13801f);
            sb.append("fileWriter: ");
            sb.append(this.f13838s);
            sb.append(LogUtils.f13801f);
            sb.append("onConsoleOutputListener: ");
            sb.append(this.f13839t);
            sb.append(LogUtils.f13801f);
            sb.append("onFileOutputListener: ");
            sb.append(this.f13840u);
            sb.append(LogUtils.f13801f);
            sb.append("fileExtraHeader: ");
            sb.append(this.f13841v.m8550f());
            return sb.toString();
        }

        public Config() {
            this.f13822c = "util";
            this.f13823d = LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION;
            this.f13824e = true;
            this.f13825f = true;
            this.f13826g = "";
            this.f13827h = true;
            this.f13828i = true;
            this.f13829j = false;
            this.f13830k = true;
            this.f13831l = true;
            this.f13832m = 2;
            this.f13833n = 2;
            this.f13834o = 1;
            this.f13835p = 0;
            this.f13836q = -1;
            this.f13837r = C1887b.m8457N();
            this.f13841v = new C1887b.a("Log");
            if (C1887b.m8432A0() && Utils.getApp().getExternalFilesDir(null) != null) {
                this.f13820a = Utils.getApp().getExternalFilesDir(null) + LogUtils.f13800e + "log" + LogUtils.f13800e;
                return;
            }
            this.f13820a = Utils.getApp().getFilesDir() + LogUtils.f13800e + "log" + LogUtils.f13800e;
        }

        public final Config addFileExtraHead(String str, String str2) {
            this.f13841v.m8546b(str, str2);
            return this;
        }

        public final Config setDir(File file) {
            String str;
            if (file == null) {
                str = null;
            } else {
                str = file.getAbsolutePath() + LogUtils.f13800e;
            }
            this.f13821b = str;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public interface IFileWriter {
        void write(String str, String str2);
    }

    /* loaded from: classes3.dex */
    public static abstract class IFormatter<T> {
        public abstract String format(T t);
    }

    /* loaded from: classes3.dex */
    public interface OnConsoleOutputListener {
        void onConsoleOutput(int i, String str, String str2);
    }

    /* loaded from: classes3.dex */
    public interface OnFileOutputListener {
        void onFileOutput(String str, String str2);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface TYPE {
    }

    /* renamed from: com.blankj.utilcode.util.LogUtils$a */
    /* loaded from: classes3.dex */
    public static class RunnableC1821a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f13842e;

        /* renamed from: f */
        public final /* synthetic */ C1826f f13843f;

        /* renamed from: g */
        public final /* synthetic */ String f13844g;

        public RunnableC1821a(int i, C1826f c1826f, String str) {
            this.f13842e = i;
            this.f13843f = c1826f;
            this.f13844g = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            LogUtils.m8167x(this.f13842e, this.f13843f.f13846a, this.f13843f.f13848c + this.f13844g);
        }
    }

    /* renamed from: com.blankj.utilcode.util.LogUtils$b */
    /* loaded from: classes3.dex */
    public static class C1822b implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return LogUtils.m8162u(str);
        }
    }

    /* renamed from: com.blankj.utilcode.util.LogUtils$c */
    /* loaded from: classes3.dex */
    public static class C1823c implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return LogUtils.m8162u(str);
        }
    }

    /* renamed from: com.blankj.utilcode.util.LogUtils$d */
    /* loaded from: classes3.dex */
    public static class RunnableC1824d implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ File f13845e;

        public RunnableC1824d(File file) {
            this.f13845e = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f13845e.delete()) {
                return;
            }
            Log.e("LogUtils", "delete " + this.f13845e + " failed!");
        }
    }

    /* renamed from: com.blankj.utilcode.util.LogUtils$e */
    /* loaded from: classes3.dex */
    public static final class C1825e {
        /* renamed from: a */
        public static String m8177a(Object obj) {
            if (obj instanceof Object[]) {
                return Arrays.deepToString((Object[]) obj);
            }
            if (obj instanceof boolean[]) {
                return Arrays.toString((boolean[]) obj);
            }
            if (obj instanceof byte[]) {
                return Arrays.toString((byte[]) obj);
            }
            if (obj instanceof char[]) {
                return Arrays.toString((char[]) obj);
            }
            if (obj instanceof double[]) {
                return Arrays.toString((double[]) obj);
            }
            if (obj instanceof float[]) {
                return Arrays.toString((float[]) obj);
            }
            if (obj instanceof int[]) {
                return Arrays.toString((int[]) obj);
            }
            if (obj instanceof long[]) {
                return Arrays.toString((long[]) obj);
            }
            if (obj instanceof short[]) {
                return Arrays.toString((short[]) obj);
            }
            throw new IllegalArgumentException("Array has incompatible type: " + obj.getClass());
        }

        /* renamed from: b */
        public static String m8178b(Bundle bundle) {
            Iterator<String> it2 = bundle.keySet().iterator();
            if (!it2.hasNext()) {
                return "Bundle {}";
            }
            StringBuilder sb = new StringBuilder(128);
            sb.append("Bundle { ");
            while (true) {
                String next = it2.next();
                Object obj = bundle.get(next);
                sb.append(next);
                sb.append('=');
                if (obj instanceof Bundle) {
                    sb.append(obj == bundle ? "(this Bundle)" : m8178b((Bundle) obj));
                } else {
                    sb.append(LogUtils.m8155n(obj));
                }
                if (!it2.hasNext()) {
                    sb.append(" }");
                    return sb.toString();
                }
                sb.append(',');
                sb.append(' ');
            }
        }

        @RequiresApi(api = 16)
        /* renamed from: c */
        public static void m8179c(ClipData clipData, StringBuilder sb) {
            ClipData.Item itemAt = clipData.getItemAt(0);
            if (itemAt == null) {
                sb.append("ClipData.Item {}");
                return;
            }
            sb.append("ClipData.Item { ");
            String htmlText = itemAt.getHtmlText();
            if (htmlText != null) {
                sb.append("H:");
                sb.append(htmlText);
                sb.append("}");
                return;
            }
            CharSequence text = itemAt.getText();
            if (text != null) {
                sb.append("T:");
                sb.append(text);
                sb.append("}");
                return;
            }
            Uri uri = itemAt.getUri();
            if (uri != null) {
                sb.append("U:");
                sb.append(uri);
                sb.append("}");
                return;
            }
            Intent intent = itemAt.getIntent();
            if (intent == null) {
                sb.append("NULL");
                sb.append("}");
            } else {
                sb.append("I:");
                sb.append(m8182f(intent));
                sb.append("}");
            }
        }

        /* renamed from: d */
        public static String m8180d(String str) {
            try {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt == '{') {
                        return new JSONObject(str).toString(2);
                    }
                    if (charAt == '[') {
                        return new JSONArray(str).toString(2);
                    }
                    if (!Character.isWhitespace(charAt)) {
                        return str;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return str;
        }

        /* renamed from: e */
        public static String m8181e(String str) {
            try {
                StreamSource streamSource = new StreamSource(new StringReader(str));
                StreamResult streamResult = new StreamResult(new StringWriter());
                Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
                newTransformer.setOutputProperty("indent", "yes");
                newTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
                newTransformer.transform(streamSource, streamResult);
                return streamResult.getWriter().toString().replaceFirst(">", ">" + LogUtils.f13801f);
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }

        /* renamed from: f */
        public static String m8182f(Intent intent) {
            boolean z;
            StringBuilder sb = new StringBuilder(128);
            sb.append("Intent { ");
            String action = intent.getAction();
            boolean z2 = false;
            boolean z3 = true;
            if (action != null) {
                sb.append("act=");
                sb.append(action);
                z = false;
            } else {
                z = true;
            }
            Set<String> categories = intent.getCategories();
            if (categories != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("cat=[");
                for (String str : categories) {
                    if (!z3) {
                        sb.append(',');
                    }
                    sb.append(str);
                    z3 = false;
                }
                sb.append(IteratorUtils.f104924b);
                z = false;
            }
            Uri data = intent.getData();
            if (data != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("dat=");
                sb.append(data);
                z = false;
            }
            String type = intent.getType();
            if (type != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("typ=");
                sb.append(type);
                z = false;
            }
            int flags = intent.getFlags();
            if (flags != 0) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("flg=0x");
                sb.append(Integer.toHexString(flags));
                z = false;
            }
            String str2 = intent.getPackage();
            if (str2 != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("pkg=");
                sb.append(str2);
                z = false;
            }
            ComponentName component = intent.getComponent();
            if (component != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("cmp=");
                sb.append(component.flattenToShortString());
                z = false;
            }
            Rect sourceBounds = intent.getSourceBounds();
            if (sourceBounds != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("bnds=");
                sb.append(sourceBounds.toShortString());
                z = false;
            }
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                if (!z) {
                    sb.append(' ');
                }
                m8179c(clipData, sb);
                z = false;
            }
            Bundle extras = intent.getExtras();
            if (extras != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("extras={");
                sb.append(m8178b(extras));
                sb.append('}');
            } else {
                z2 = z;
            }
            Intent selector = intent.getSelector();
            if (selector != null) {
                if (!z2) {
                    sb.append(' ');
                }
                sb.append("sel={");
                sb.append(selector == intent ? "(this Intent)" : m8182f(selector));
                sb.append("}");
            }
            sb.append(" }");
            return sb.toString();
        }

        /* renamed from: g */
        public static String m8183g(Object obj) {
            if (obj instanceof CharSequence) {
                return C1887b.m8443G(obj.toString());
            }
            try {
                return C1887b.m8471U().toJson(obj);
            } catch (Throwable unused) {
                return obj.toString();
            }
        }

        /* renamed from: h */
        public static String m8184h(Object obj) {
            return m8185i(obj, -1);
        }

        /* renamed from: i */
        public static String m8185i(Object obj, int i) {
            return obj.getClass().isArray() ? m8177a(obj) : obj instanceof Throwable ? C1887b.m8469T((Throwable) obj) : obj instanceof Bundle ? m8178b((Bundle) obj) : obj instanceof Intent ? m8182f((Intent) obj) : i == 32 ? m8183g(obj) : i == 48 ? m8181e(obj.toString()) : obj.toString();
        }
    }

    /* renamed from: com.blankj.utilcode.util.LogUtils$f */
    /* loaded from: classes3.dex */
    public static final class C1826f {

        /* renamed from: a */
        public String f13846a;

        /* renamed from: b */
        public String[] f13847b;

        /* renamed from: c */
        public String f13848c;

        public C1826f(String str, String[] strArr, String str2) {
            this.f13846a = str;
            this.f13847b = strArr;
            this.f13848c = str2;
        }
    }

    public LogUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: A */
    public static void m8132A(int i, String str, String[] strArr) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (f13816u.isLogBorderSwitch()) {
                    str2 = f13804i + str2;
                }
                m8163v(i, str, str2);
            }
            if (f13816u.isLogBorderSwitch()) {
                m8163v(i, str, f13809n);
            }
        }
    }

    /* renamed from: B */
    public static void m8133B(int i, String str, String str2) {
        int length = str2.length();
        int i2 = length / f13811p;
        if (i2 <= 0) {
            m8135D(i, str, str2);
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4 + f13811p;
            m8135D(i, str, str2.substring(i4, i5));
            i3++;
            i4 = i5;
        }
        if (i4 != length) {
            m8135D(i, str, str2.substring(i4, length));
        }
    }

    /* renamed from: C */
    public static void m8134C(int i, String str, String str2) {
        int length = str2.length();
        Config config = f13816u;
        boolean isLogBorderSwitch = config.isLogBorderSwitch();
        int i2 = f13811p;
        int i3 = isLogBorderSwitch ? (length - 113) / f13811p : length / f13811p;
        if (i3 <= 0) {
            m8163v(i, str, str2);
            return;
        }
        int i4 = 1;
        if (!config.isLogBorderSwitch()) {
            m8163v(i, str, str2.substring(0, f13811p));
            while (i4 < i3) {
                StringBuilder sb = new StringBuilder();
                sb.append(" ");
                sb.append(f13801f);
                int i5 = i2 + f13811p;
                sb.append(str2.substring(i2, i5));
                m8163v(i, str, sb.toString());
                i4++;
                i2 = i5;
            }
            if (i2 != length) {
                m8163v(i, str, " " + f13801f + str2.substring(i2, length));
                return;
            }
            return;
        }
        m8163v(i, str, str2.substring(0, f13811p) + f13801f + f13810o);
        while (i4 < i3) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" ");
            String str3 = f13801f;
            sb2.append(str3);
            sb2.append(f13808m);
            sb2.append(str3);
            sb2.append(f13804i);
            int i6 = i2 + f13811p;
            sb2.append(str2.substring(i2, i6));
            sb2.append(str3);
            sb2.append(f13810o);
            m8163v(i, str, sb2.toString());
            i4++;
            i2 = i6;
        }
        if (i2 != length - 113) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" ");
            String str4 = f13801f;
            sb3.append(str4);
            sb3.append(f13808m);
            sb3.append(str4);
            sb3.append(f13804i);
            sb3.append(str2.substring(i2, length));
            m8163v(i, str, sb3.toString());
        }
    }

    /* renamed from: D */
    public static void m8135D(int i, String str, String str2) {
        if (!f13816u.isLogBorderSwitch()) {
            m8163v(i, str, str2);
            return;
        }
        for (String str3 : str2.split(f13801f)) {
            m8163v(i, str, f13804i + str3);
        }
    }

    /* renamed from: E */
    public static String m8136E(int i, Object... objArr) {
        String str;
        if (objArr != null) {
            if (objArr.length == 1) {
                str = m8154m(i, objArr[0]);
            } else {
                StringBuilder sb = new StringBuilder();
                int length = objArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    Object obj = objArr[i2];
                    sb.append("args");
                    sb.append(IteratorUtils.f104923a);
                    sb.append(i2);
                    sb.append(IteratorUtils.f104924b);
                    sb.append(CloudStorageConstants.OPERATION_EQUAL);
                    sb.append(m8155n(obj));
                    sb.append(f13801f);
                }
                str = sb.toString();
            }
        } else {
            str = "null";
        }
        return str.length() == 0 ? f13812q : str;
    }

    /* renamed from: F */
    public static String m8137F(int i, String str, String[] strArr, String str2) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        if (f13816u.isLogBorderSwitch()) {
            sb.append(" ");
            String str3 = f13801f;
            sb.append(str3);
            sb.append(f13808m);
            sb.append(str3);
            if (strArr != null) {
                for (String str4 : strArr) {
                    sb.append(f13804i);
                    sb.append(str4);
                    sb.append(f13801f);
                }
                sb.append(f13809n);
                sb.append(f13801f);
            }
            String[] split = str2.split(f13801f);
            int length = split.length;
            while (i2 < length) {
                String str5 = split[i2];
                sb.append(f13804i);
                sb.append(str5);
                sb.append(f13801f);
                i2++;
            }
            sb.append(f13810o);
        } else {
            if (strArr != null) {
                sb.append(" ");
                sb.append(f13801f);
                int length2 = strArr.length;
                while (i2 < length2) {
                    sb.append(strArr[i2]);
                    sb.append(f13801f);
                    i2++;
                }
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    /* renamed from: G */
    public static C1826f m8138G(String str) {
        Config config = f13816u;
        if (config.f13827h || config.isLogHeadSwitch()) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            int stackOffset = config.getStackOffset() + 3;
            if (stackOffset >= stackTrace.length) {
                String m8158q = m8158q(stackTrace[3]);
                if (config.f13827h && C1887b.m8438D0(str)) {
                    int indexOf = m8158q.indexOf(46);
                    str = indexOf == -1 ? m8158q : m8158q.substring(0, indexOf);
                }
                return new C1826f(str, null, ": ");
            }
            StackTraceElement stackTraceElement = stackTrace[stackOffset];
            String m8158q2 = m8158q(stackTraceElement);
            if (config.f13827h && C1887b.m8438D0(str)) {
                int indexOf2 = m8158q2.indexOf(46);
                str = indexOf2 == -1 ? m8158q2 : m8158q2.substring(0, indexOf2);
            }
            if (config.isLogHeadSwitch()) {
                String name = Thread.currentThread().getName();
                String formatter = new Formatter().format("%s, %s.%s(%s:%d)", name, stackTraceElement.getClassName(), stackTraceElement.getMethodName(), m8158q2, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                String str2 = " [" + formatter + "]: ";
                if (config.getStackDeep() <= 1) {
                    return new C1826f(str, new String[]{formatter}, str2);
                }
                int min = Math.min(config.getStackDeep(), stackTrace.length - stackOffset);
                String[] strArr = new String[min];
                strArr[0] = formatter;
                int length = name.length() + 2;
                String formatter2 = new Formatter().format("%" + length + "s", "").toString();
                for (int i = 1; i < min; i++) {
                    StackTraceElement stackTraceElement2 = stackTrace[i + stackOffset];
                    strArr[i] = new Formatter().format("%s%s.%s(%s:%d)", formatter2, stackTraceElement2.getClassName(), stackTraceElement2.getMethodName(), m8158q(stackTraceElement2), Integer.valueOf(stackTraceElement2.getLineNumber())).toString();
                }
                return new C1826f(str, strArr, str2);
            }
        } else {
            str = config.getGlobalTag();
        }
        return new C1826f(str, null, ": ");
    }

    /* renamed from: a */
    public static void m8139a(Object... objArr) {
        log(7, f13816u.getGlobalTag(), objArr);
    }

    public static void aTag(String str, Object... objArr) {
        log(7, str, objArr);
    }

    public static void dTag(String str, Object... objArr) {
        log(3, str, objArr);
    }

    public static void eTag(String str, Object... objArr) {
        log(6, str, objArr);
    }

    public static void file(Object obj) {
        log(19, f13816u.getGlobalTag(), obj);
    }

    public static Config getConfig() {
        return f13816u;
    }

    public static String getCurrentLogFilePath() {
        return m8157p(new Date());
    }

    public static List<File> getLogFiles() {
        File file = new File(f13816u.getDir());
        if (!file.exists()) {
            return new ArrayList();
        }
        File[] listFiles = file.listFiles(new C1822b());
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, listFiles);
        return arrayList;
    }

    public static void iTag(String str, Object... objArr) {
        log(4, str, objArr);
    }

    /* renamed from: j */
    public static boolean m8151j(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!C1887b.m8529s(file.getParentFile())) {
            return false;
        }
        try {
            m8152k(str, str2);
            boolean createNewFile = file.createNewFile();
            if (createNewFile) {
                m8169z(str, str2);
            }
            return createNewFile;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void json(Object obj) {
        log(35, f13816u.getGlobalTag(), obj);
    }

    /* renamed from: k */
    public static void m8152k(String str, String str2) {
        File[] listFiles;
        if (f13816u.getSaveDays() > 0 && (listFiles = new File(str).getParentFile().listFiles(new C1823c())) != null && listFiles.length > 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy_MM_dd", Locale.getDefault());
            try {
                long time = simpleDateFormat.parse(str2).getTime() - (r0.getSaveDays() * 86400000);
                for (File file : listFiles) {
                    String name = file.getName();
                    name.length();
                    if (simpleDateFormat.parse(m8153l(name)).getTime() <= time) {
                        f13818w.execute(new RunnableC1824d(file));
                    }
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: l */
    public static String m8153l(String str) {
        Matcher matcher = Pattern.compile("[0-9]{4}_[0-9]{2}_[0-9]{2}").matcher(str);
        return matcher.find() ? matcher.group() : "";
    }

    public static void log(int i, String str, Object... objArr) {
        Config config = f13816u;
        if (config.isLogSwitch()) {
            int i2 = i & 15;
            int i3 = i & 240;
            if (config.isLog2ConsoleSwitch() || config.isLog2FileSwitch() || i3 == 16) {
                if (i2 >= config.f13832m || i2 >= config.f13833n) {
                    C1826f m8138G = m8138G(str);
                    String m8136E = m8136E(i3, objArr);
                    if (config.isLog2ConsoleSwitch() && i3 != 16 && i2 >= config.f13832m) {
                        m8165w(i2, m8138G.f13846a, m8138G.f13847b, m8136E);
                    }
                    if ((config.isLog2FileSwitch() || i3 == 16) && i2 >= config.f13833n) {
                        f13818w.execute(new RunnableC1821a(i2, m8138G, m8136E));
                    }
                }
            }
        }
    }

    /* renamed from: m */
    public static String m8154m(int i, Object obj) {
        return obj == null ? "null" : i == 32 ? C1825e.m8185i(obj, 32) : i == 48 ? C1825e.m8185i(obj, 48) : m8155n(obj);
    }

    /* renamed from: n */
    public static String m8155n(Object obj) {
        IFormatter iFormatter;
        if (obj == null) {
            return "null";
        }
        SimpleArrayMap<Class, IFormatter> simpleArrayMap = f13819x;
        return (simpleArrayMap.isEmpty() || (iFormatter = simpleArrayMap.get(m8156o(obj))) == null) ? C1825e.m8184h(obj) : iFormatter.format(obj);
    }

    /* renamed from: o */
    public static Class m8156o(Object obj) {
        String obj2;
        Class<?> cls = obj.getClass();
        if (cls.isAnonymousClass() || cls.isSynthetic()) {
            Type[] genericInterfaces = cls.getGenericInterfaces();
            if (genericInterfaces.length == 1) {
                Type type = genericInterfaces[0];
                while (type instanceof ParameterizedType) {
                    type = ((ParameterizedType) type).getRawType();
                }
                obj2 = type.toString();
            } else {
                Type genericSuperclass = cls.getGenericSuperclass();
                while (genericSuperclass instanceof ParameterizedType) {
                    genericSuperclass = ((ParameterizedType) genericSuperclass).getRawType();
                }
                obj2 = genericSuperclass.toString();
            }
            if (obj2.startsWith("class ")) {
                obj2 = obj2.substring(6);
            } else if (obj2.startsWith("interface ")) {
                obj2 = obj2.substring(10);
            }
            try {
                return Class.forName(obj2);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return cls;
    }

    /* renamed from: p */
    public static String m8157p(Date date) {
        String substring = m8159r().format(date).substring(0, 10);
        StringBuilder sb = new StringBuilder();
        Config config = f13816u;
        sb.append(config.getDir());
        sb.append(config.getFilePrefix());
        sb.append("_");
        sb.append(substring);
        sb.append("_");
        sb.append(config.getProcessName());
        sb.append(config.getFileExtension());
        return sb.toString();
    }

    /* renamed from: q */
    public static String m8158q(StackTraceElement stackTraceElement) {
        String fileName = stackTraceElement.getFileName();
        if (fileName != null) {
            return fileName;
        }
        String className = stackTraceElement.getClassName();
        String[] split = className.split("\\.");
        if (split.length > 0) {
            className = split[split.length - 1];
        }
        int indexOf = className.indexOf(36);
        if (indexOf != -1) {
            className = className.substring(0, indexOf);
        }
        return className + ".java";
    }

    /* renamed from: r */
    public static SimpleDateFormat m8159r() {
        if (f13817v == null) {
            f13817v = new SimpleDateFormat("yyyy_MM_dd HH:mm:ss.SSS ", Locale.getDefault());
        }
        return f13817v;
    }

    /* renamed from: s */
    public static <T> Class m8160s(IFormatter<T> iFormatter) {
        Type[] genericInterfaces = iFormatter.getClass().getGenericInterfaces();
        Type type = ((ParameterizedType) (genericInterfaces.length == 1 ? genericInterfaces[0] : iFormatter.getClass().getGenericSuperclass())).getActualTypeArguments()[0];
        while (type instanceof ParameterizedType) {
            type = ((ParameterizedType) type).getRawType();
        }
        String obj = type.toString();
        if (obj.startsWith("class ")) {
            obj = obj.substring(6);
        } else if (obj.startsWith("interface ")) {
            obj = obj.substring(10);
        }
        try {
            return Class.forName(obj);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: t */
    public static void m8161t(String str, String str2) {
        Config config = f13816u;
        if (config.f13838s == null) {
            C1887b.m8512j1(str, str2, true);
        } else {
            config.f13838s.write(str, str2);
        }
        if (config.f13840u != null) {
            config.f13840u.onFileOutput(str, str2);
        }
    }

    /* renamed from: u */
    public static boolean m8162u(String str) {
        return str.matches("^" + f13816u.getFilePrefix() + "_[0-9]{4}_[0-9]{2}_[0-9]{2}_.*$");
    }

    /* renamed from: v */
    public static void m8164v(Object... objArr) {
        log(2, f13816u.getGlobalTag(), objArr);
    }

    public static void vTag(String str, Object... objArr) {
        log(2, str, objArr);
    }

    /* renamed from: w */
    public static void m8166w(Object... objArr) {
        log(5, f13816u.getGlobalTag(), objArr);
    }

    public static void wTag(String str, Object... objArr) {
        log(5, str, objArr);
    }

    /* renamed from: x */
    public static void m8167x(int i, String str, String str2) {
        Date date = new Date();
        String format = m8159r().format(date);
        String substring = format.substring(0, 10);
        String m8157p = m8157p(date);
        if (!m8151j(m8157p, substring)) {
            Log.e("LogUtils", "create " + m8157p + " failed!");
            return;
        }
        m8161t(m8157p, format.substring(11) + f13796a[i - 2] + "/" + str + str2 + f13801f);
    }

    public static void xml(String str) {
        log(51, f13816u.getGlobalTag(), str);
    }

    /* renamed from: y */
    public static void m8168y(int i, String str, boolean z) {
        if (f13816u.isLogBorderSwitch()) {
            m8163v(i, str, z ? f13808m : f13810o);
        }
    }

    /* renamed from: z */
    public static void m8169z(String str, String str2) {
        Config config = f13816u;
        config.f13841v.m8545a("Date of Log", str2);
        m8161t(str, config.f13841v.toString());
    }

    /* renamed from: d */
    public static void m8143d(Object... objArr) {
        log(3, f13816u.getGlobalTag(), objArr);
    }

    /* renamed from: e */
    public static void m8144e(Object... objArr) {
        log(6, f13816u.getGlobalTag(), objArr);
    }

    public static void file(int i, Object obj) {
        log(i | 16, f13816u.getGlobalTag(), obj);
    }

    /* renamed from: i */
    public static void m8149i(Object... objArr) {
        log(4, f13816u.getGlobalTag(), objArr);
    }

    public static void json(int i, Object obj) {
        log(i | 32, f13816u.getGlobalTag(), obj);
    }

    /* renamed from: v */
    public static void m8163v(int i, String str, String str2) {
        Log.println(i, str, str2);
        Config config = f13816u;
        if (config.f13839t != null) {
            config.f13839t.onConsoleOutput(i, str, str2);
        }
    }

    /* renamed from: w */
    public static void m8165w(int i, String str, String[] strArr, String str2) {
        if (f13816u.isSingleTagSwitch()) {
            m8134C(i, str, m8137F(i, str, strArr, str2));
            return;
        }
        m8168y(i, str, true);
        m8132A(i, str, strArr);
        m8133B(i, str, str2);
        m8168y(i, str, false);
    }

    public static void xml(int i, String str) {
        log(i | 48, f13816u.getGlobalTag(), str);
    }

    public static void file(String str, Object obj) {
        log(19, str, obj);
    }

    public static void json(String str, Object obj) {
        log(35, str, obj);
    }

    public static void xml(String str, String str2) {
        log(51, str, str2);
    }

    public static void file(int i, String str, Object obj) {
        log(i | 16, str, obj);
    }

    public static void json(int i, String str, Object obj) {
        log(i | 32, str, obj);
    }

    public static void xml(int i, String str, String str2) {
        log(i | 48, str, str2);
    }
}
