package net.p110sf.saxon.gizmo;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.SortedSet;
import jline.console.ConsoleReader;
import jline.console.completer.Completer;
import jline.console.completer.FileNameCompleter;
import jline.console.completer.StringsCompleter;
import jline.internal.Preconditions;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes11.dex */
public class JLine2Talker implements Talker {

    /* renamed from: c */
    public static final boolean f100433c = false;
    public static StringBuilder debugLog;

    /* renamed from: a */
    public final ConsoleReader f100434a;

    /* renamed from: b */
    public Completer f100435b;

    /* loaded from: classes11.dex */
    public static class XPathCompleter extends StringsCompleter {

        /* renamed from: net.sf.saxon.gizmo.JLine2Talker$XPathCompleter$a */
        /* loaded from: classes11.dex */
        public class C18390a extends FileNameCompleter {

            /* renamed from: a */
            public final /* synthetic */ int f100436a;

            public C18390a(int i) {
                this.f100436a = i;
            }

            /* renamed from: a */
            public int m63250a(String str, int i, List<CharSequence> list) {
                Preconditions.checkNotNull(list);
                if (str == null) {
                    str = "";
                }
                String str2 = File.separator;
                if (str2.equals("\\")) {
                    str = str.replace('/', '\\');
                }
                String substring = str.substring(this.f100436a + 1);
                File userHome = getUserHome();
                if (substring.startsWith("~" + separator())) {
                    substring = userHome.getPath() + substring.substring(1);
                } else if (substring.startsWith("~")) {
                    substring = userHome.getParentFile().getAbsolutePath();
                } else if (!substring.contains(separator())) {
                    substring = System.getProperty(SystemUtils.f107422c) + separator() + substring;
                } else if (!new File(substring).isAbsolute()) {
                    substring = System.getProperty(SystemUtils.f107422c) + separator() + substring;
                }
                if (str2.equals("\\")) {
                    substring = substring.replace('/', '\\');
                }
                File file = new File(substring);
                if (!substring.endsWith(separator())) {
                    file = file.getParentFile();
                }
                int matchFiles = matchFiles(str, substring, file == null ? new File[0] : file.listFiles(), list);
                return matchFiles == 0 ? this.f100436a + 1 : matchFiles;
            }
        }

        public XPathCompleter(List<String> list) {
            super(list);
        }

        public int complete(String str, int i, List<CharSequence> list) {
            int indexOf = str.indexOf(32);
            if (indexOf > 0) {
                String substring = str.substring(0, indexOf);
                if (substring.equals("load") || substring.equals("save") || substring.equals(Constants.ELEMNAME_TRANSFORM_STRING) || substring.equals("schema")) {
                    return new C18390a(indexOf).complete(str, i, list);
                }
            }
            int max = Integer.max(i - 1, 0);
            if (max > indexOf) {
                while (max >= 0) {
                    char charAt = str.charAt(max);
                    if (!Character.isAlphabetic(charAt) && !Character.isDigit(charAt) && charAt != '-' && charAt != '_' && charAt != '@' && charAt != '.' && charAt != ' ') {
                        break;
                    }
                    max--;
                }
            }
            int i2 = max + 1;
            String substring2 = str.substring(i2);
            for (String str2 : ((SortedSet) getStrings()).tailSet(substring2)) {
                if (!str2.startsWith(substring2)) {
                    break;
                }
                list.add(str2);
            }
            if (list.isEmpty()) {
                return -1;
            }
            return i2;
        }
    }

    public JLine2Talker() throws IOException {
        ConsoleReader consoleReader = new ConsoleReader(System.in, System.out);
        this.f100434a = consoleReader;
        consoleReader.setExpandEvents(false);
        consoleReader.setHistoryEnabled(true);
        consoleReader.getCompletionHandler().setPrintSpaceAfterFullCompletion(false);
    }

    /* renamed from: a */
    public static void m63249a(String str) {
    }

    @Override // net.p110sf.saxon.gizmo.Talker
    public String exchange(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    this.f100434a.println(str);
                }
            } catch (IOException e) {
                System.err.println(e.getMessage());
                throw new RuntimeException(e);
            }
        }
        String readLine = this.f100434a.readLine(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
        if (readLine == null) {
            System.exit(0);
        }
        return readLine.trim();
    }

    @Override // net.p110sf.saxon.gizmo.Talker
    public void setAutoCompletion(List<String> list) {
        Completer completer = this.f100435b;
        if (completer != null) {
            this.f100434a.removeCompleter(completer);
        }
        XPathCompleter xPathCompleter = new XPathCompleter(list);
        this.f100435b = xPathCompleter;
        this.f100434a.addCompleter(xPathCompleter);
    }
}
