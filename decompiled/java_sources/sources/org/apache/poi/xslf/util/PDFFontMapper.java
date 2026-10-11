package org.apache.poi.xslf.util;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import de.rototor.pdfbox.graphics2d.IPdfBoxGraphics2DFontTextDrawer;
import de.rototor.pdfbox.graphics2d.PdfBoxGraphics2DFontTextDrawer;
import java.awt.Font;
import java.awt.FontFormatException;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import org.apache.commons.lang3.SystemUtils;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.poi.xslf.util.PDFFontMapper;

/* loaded from: classes13.dex */
public class PDFFontMapper extends PdfBoxGraphics2DFontTextDrawer {
    private static final String DEFAULT_TTF_PATTERN = ".*\\.tt[fc]";
    private static final String FONTDIRS_MAC = "$HOME/Library/Fonts;/Library/Fonts;/Network/Library/Fonts;/System/Library/Fonts;/System Folder/Fonts";
    private static final String FONTDIRS_UNX = "/usr/share/fonts;/usr/local/share/fonts;$HOME/.fonts";
    private static final String FONTDIRS_WIN = "C:\\Windows\\Fonts";
    private final Map<String, File> fonts = new HashMap();
    private final Set<String> registered = new HashSet();

    public PDFFontMapper(String str, String str2) {
        registerFonts(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$registerFonts$0(LinkedList linkedList, Pattern pattern, File file, String str) {
        File file2 = new File(file, str);
        if (!file2.isDirectory()) {
            return pattern.matcher(str).matches();
        }
        linkedList.add(file2);
        return false;
    }

    private void registerFonts(String str, String str2) {
        if (str == null) {
            String lowerCase = System.getProperty("os.name", "generic").toLowerCase(Locale.ROOT);
            str = (lowerCase.contains(CloudStorageConstants.MAC_TAG) || lowerCase.contains("darwin")) ? FONTDIRS_MAC : lowerCase.contains("win") ? FONTDIRS_WIN : FONTDIRS_UNX;
        }
        String replace = str.replace("$HOME", System.getProperty(SystemUtils.f107421b));
        final LinkedList linkedList = new LinkedList();
        Stream.of((Object[]) replace.split(AndroidTreeView.f47214k)).map(new Function() { // from class: com.sunia.HTREnginev2.wjk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new File((String) obj);
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.xjk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((File) obj).isDirectory();
            }
        }).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.yjk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                linkedList.add((File) obj);
            }
        });
        if (str2 == null) {
            str2 = DEFAULT_TTF_PATTERN;
        }
        final Pattern compile = Pattern.compile(str2);
        while (!linkedList.isEmpty()) {
            File[] listFiles = ((File) linkedList.removeFirst()).listFiles(new FilenameFilter() { // from class: com.sunia.HTREnginev2.zjk
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str3) {
                    boolean lambda$registerFonts$0;
                    lambda$registerFonts$0 = PDFFontMapper.lambda$registerFonts$0(linkedList, compile, file, str3);
                    return lambda$registerFonts$0;
                }
            });
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        this.fonts.put(Font.createFont(0, file).getFontName(Locale.ROOT), file);
                    } catch (FontFormatException | IOException unused) {
                    }
                }
            }
        }
    }

    public PDFont mapFont(Font font, IPdfBoxGraphics2DFontTextDrawer.IFontTextDrawerEnv iFontTextDrawerEnv) throws IOException, FontFormatException {
        String fontName = font.getFontName(Locale.ROOT);
        if (!this.registered.contains(fontName)) {
            this.registered.add(fontName);
            File file = this.fonts.get(fontName);
            if (file != null) {
                super.registerFont(fontName, file);
            }
        }
        return super.mapFont(font, iFontTextDrawerEnv);
    }
}
