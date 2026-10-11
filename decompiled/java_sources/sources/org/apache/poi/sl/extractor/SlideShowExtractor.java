package org.apache.poi.sl.extractor;

import com.sunia.HTREnginev2.jum;
import com.sunia.HTREnginev2.kum;
import com.zaxxer.sparsebits.SparseBitSet;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.stream.IntStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.extractor.POITextExtractor;
import org.apache.poi.sl.extractor.SlideShowExtractor;
import org.apache.poi.sl.usermodel.Comment;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Notes;
import org.apache.poi.sl.usermodel.ObjectShape;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.PlaceholderDetails;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.sl.usermodel.Slide;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.sl.usermodel.TableCell;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public class SlideShowExtractor<S extends Shape<S, P>, P extends TextParagraph<S, P, ? extends TextRun>> implements POITextExtractor {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SlideShowExtractor.class);
    private static final String SLIDE_NUMBER_PH = "‹#›";
    private boolean commentsByDefault;
    private boolean masterByDefault;
    private boolean notesByDefault;
    protected final SlideShow<S, P> slideshow;
    private boolean slidesByDefault = true;
    private Predicate<Object> filter = new Predicate() { // from class: com.sunia.HTREnginev2.cum
        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            boolean lambda$new$0;
            lambda$new$0 = SlideShowExtractor.lambda$new$0(obj);
            return lambda$new$0;
        }
    };
    private boolean doCloseFilesystem = true;

    /* renamed from: org.apache.poi.sl.extractor.SlideShowExtractor$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196371 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$Placeholder;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap;

        static {
            int[] iArr = new int[TextRun.TextCap.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap = iArr;
            try {
                iArr[TextRun.TextCap.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap[TextRun.TextCap.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Placeholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$Placeholder = iArr2;
            try {
                iArr2[Placeholder.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.FOOTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.SLIDE_NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.DATETIME.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public SlideShowExtractor(SlideShow<S, P> slideShow) {
        this.slideshow = slideShow;
    }

    private void addOLEShapes(List<ObjectShape<S, P>> list, ShapeContainer<S, P> shapeContainer) {
        Iterator<S> it2 = shapeContainer.iterator();
        while (it2.hasNext()) {
            Shape shape = (Shape) it2.next();
            if (shape instanceof ShapeContainer) {
                addOLEShapes(list, (ShapeContainer) shape);
            } else if (shape instanceof ObjectShape) {
                list.add((ObjectShape) shape);
            }
        }
    }

    private void addSheetPlaceholderDatails(Sheet<S, P> sheet, Placeholder placeholder, Consumer<String> consumer) {
        PlaceholderDetails placeholderDetails = sheet.getPlaceholderDetails(placeholder);
        String text = placeholderDetails != null ? placeholderDetails.getText() : null;
        if (text == null || !this.filter.test(placeholderDetails)) {
            return;
        }
        consumer.accept(text);
    }

    private static boolean filterFonts(Object obj, String str, Boolean bool, Boolean bool2) {
        if (!(obj instanceof TextRun)) {
            return false;
        }
        TextRun textRun = (TextRun) obj;
        if (!str.equalsIgnoreCase(textRun.getFontFamily())) {
            return false;
        }
        if (bool == null || textRun.isItalic() == bool.booleanValue()) {
            return bool2 == null || textRun.isBold() == bool2.booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getCodepoints$2(String str, Boolean bool, Boolean bool2, Object obj) {
        return filterFonts(obj, str, bool, bool2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCodepoints$4(final BitSet bitSet, Slide slide) {
        getText(slide, new Consumer() { // from class: com.sunia.HTREnginev2.dum
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SlideShowExtractor.lambda$null$3(bitSet, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getCodepointsInSparseBitSet$5(String str, Boolean bool, Boolean bool2, Object obj) {
        return filterFonts(obj, str, bool, bool2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCodepointsInSparseBitSet$7(final SparseBitSet sparseBitSet, Slide slide) {
        getText(slide, new Consumer() { // from class: com.sunia.HTREnginev2.xtm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SlideShowExtractor.lambda$null$6(SparseBitSet.this, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(Object obj) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$null$3(final BitSet bitSet, String str) {
        IntStream codePoints = str.codePoints();
        bitSet.getClass();
        codePoints.forEach(new IntConsumer() { // from class: com.sunia.HTREnginev2.ytm
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                bitSet.set(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$null$6(final SparseBitSet sparseBitSet, String str) {
        IntStream codePoints = str.codePoints();
        sparseBitSet.getClass();
        codePoints.forEach(new IntConsumer() { // from class: com.sunia.HTREnginev2.ium
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                SparseBitSet.this.set(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$printComments$1(Comment comment) {
        return comment.getAuthor() + " - " + comment.getText();
    }

    private void printComments(Slide<S, P> slide, Consumer<String> consumer) {
        slide.getComments().stream().filter(this.filter).map(new Function() { // from class: com.sunia.HTREnginev2.hum
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$printComments$1;
                lambda$printComments$1 = SlideShowExtractor.lambda$printComments$1((Comment) obj);
                return lambda$printComments$1;
            }
        }).forEach(consumer);
    }

    private void printHeaderFooter(Sheet<S, P> sheet, Consumer<String> consumer, Consumer<String> consumer2) {
        TextShape textShape;
        PlaceholderDetails placeholderDetails;
        Sheet<S, P> masterSheet = sheet instanceof Slide ? sheet.getMasterSheet() : sheet;
        addSheetPlaceholderDatails(sheet, Placeholder.HEADER, consumer);
        addSheetPlaceholderDatails(sheet, Placeholder.FOOTER, consumer2);
        if (this.masterByDefault) {
            Iterator<S> it2 = masterSheet.iterator();
            while (it2.hasNext()) {
                Shape shape = (Shape) it2.next();
                if ((shape instanceof TextShape) && (placeholderDetails = (textShape = (TextShape) shape).getPlaceholderDetails()) != null && placeholderDetails.isVisible() && placeholderDetails.getPlaceholder() != null) {
                    int i = C196371.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholderDetails.getPlaceholder().ordinal()];
                    if (i == 1) {
                        printTextParagraphs(textShape.getTextParagraphs(), consumer);
                    } else if (i == 2) {
                        printTextParagraphs(textShape.getTextParagraphs(), consumer2);
                    } else if (i == 3) {
                        printTextParagraphs(textShape.getTextParagraphs(), consumer2, "\n", new Function() { // from class: com.sunia.HTREnginev2.eum
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                String replaceSlideNumber;
                                replaceSlideNumber = SlideShowExtractor.replaceSlideNumber((TextRun) obj);
                                return replaceSlideNumber;
                            }
                        });
                    }
                }
            }
        }
    }

    private void printNotes(Slide<S, P> slide, Consumer<String> consumer) {
        Notes<S, P> notes = slide.getNotes();
        if (notes == null) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        printHeaderFooter(notes, consumer, new kum(linkedList));
        printShapeText((Sheet) notes, consumer);
        linkedList.forEach(consumer);
    }

    private void printShapeText(Sheet<S, P> sheet, Consumer<String> consumer) {
        LinkedList linkedList = new LinkedList();
        printHeaderFooter(sheet, consumer, new kum(linkedList));
        printShapeText((ShapeContainer) sheet, consumer);
        linkedList.forEach(consumer);
    }

    private void printSlideMaster(MasterSheet<S, P> masterSheet, Consumer<String> consumer) {
        TextShape textShape;
        String text;
        if (masterSheet == null) {
            return;
        }
        Iterator<S> it2 = masterSheet.iterator();
        while (it2.hasNext()) {
            Shape shape = (Shape) it2.next();
            if ((shape instanceof TextShape) && (text = (textShape = (TextShape) shape).getText()) != null && !text.isEmpty() && !"*".equals(text)) {
                if (textShape.isPlaceholder()) {
                    LOG.atInfo().log("Ignoring boiler plate (placeholder) text on slide master: {}", text);
                } else {
                    printTextParagraphs(textShape.getTextParagraphs(), consumer);
                }
            }
        }
    }

    private void printTextParagraphs(List<P> list, Consumer<String> consumer) {
        printTextParagraphs(list, consumer, "\n");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String replaceSlideNumber(TextRun textRun) {
        String rawText = textRun.getRawText();
        if (!rawText.contains(SLIDE_NUMBER_PH)) {
            return rawText;
        }
        TextParagraph<?, ?, ?> paragraph = textRun.getParagraph();
        TextShape<?, ?> parentShape = paragraph != null ? paragraph.getParentShape() : null;
        Sheet<?, ?> sheet = parentShape != null ? parentShape.getSheet() : null;
        return rawText.replace(SLIDE_NUMBER_PH, sheet instanceof Slide ? Integer.toString(((Slide) sheet).getSlideNumber() + 1) : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String replaceTextCap(TextRun textRun) {
        TextParagraph<?, ?, ?> paragraph = textRun.getParagraph();
        TextShape<?, ?> parentShape = paragraph != null ? paragraph.getParentShape() : null;
        Placeholder placeholder = parentShape != null ? parentShape.getPlaceholder() : null;
        String replace = textRun.getRawText().replace('\r', '\n').replace((char) 11, (placeholder == Placeholder.TITLE || placeholder == Placeholder.CENTERED_TITLE || placeholder == Placeholder.SUBTITLE) ? '\n' : ' ');
        int i = C196371.$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap[textRun.getTextCap().ordinal()];
        return i != 1 ? i != 2 ? replace : replace.toLowerCase(LocaleUtil.getUserLocale()) : replace.toUpperCase(LocaleUtil.getUserLocale());
    }

    @Removal(version = "6.0.0")
    @Deprecated
    public BitSet getCodepoints(final String str, final Boolean bool, final Boolean bool2) {
        final BitSet bitSet = new BitSet();
        Predicate<Object> predicate = this.filter;
        try {
            this.filter = new Predicate() { // from class: com.sunia.HTREnginev2.ztm
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getCodepoints$2;
                    lambda$getCodepoints$2 = SlideShowExtractor.lambda$getCodepoints$2(str, bool, bool2, obj);
                    return lambda$getCodepoints$2;
                }
            };
            this.slideshow.getSlides().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.aum
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SlideShowExtractor.this.lambda$getCodepoints$4(bitSet, (Slide) obj);
                }
            });
            return bitSet;
        } finally {
            this.filter = predicate;
        }
    }

    @Internal
    public SparseBitSet getCodepointsInSparseBitSet(final String str, final Boolean bool, final Boolean bool2) {
        final SparseBitSet sparseBitSet = new SparseBitSet();
        Predicate<Object> predicate = this.filter;
        try {
            this.filter = new Predicate() { // from class: com.sunia.HTREnginev2.fum
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getCodepointsInSparseBitSet$5;
                    lambda$getCodepointsInSparseBitSet$5 = SlideShowExtractor.lambda$getCodepointsInSparseBitSet$5(str, bool, bool2, obj);
                    return lambda$getCodepointsInSparseBitSet$5;
                }
            };
            this.slideshow.getSlides().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.gum
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SlideShowExtractor.this.lambda$getCodepointsInSparseBitSet$7(sparseBitSet, (Slide) obj);
                }
            });
            return sparseBitSet;
        } finally {
            this.filter = predicate;
        }
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public POITextExtractor getMetadataTextExtractor() {
        return this.slideshow.getMetadataTextExtractor();
    }

    public List<? extends ObjectShape<S, P>> getOLEShapes() {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Slide<S, P>> it2 = this.slideshow.getSlides().iterator();
        while (it2.hasNext()) {
            addOLEShapes(arrayList, it2.next());
        }
        return arrayList;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        StringBuilder sb = new StringBuilder();
        Iterator<? extends Slide<S, P>> it2 = this.slideshow.getSlides().iterator();
        while (it2.hasNext()) {
            getText(it2.next(), new jum(sb));
        }
        return sb.toString();
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    public void setCommentsByDefault(boolean z) {
        this.commentsByDefault = z;
    }

    public void setMasterByDefault(boolean z) {
        this.masterByDefault = z;
    }

    public void setNotesByDefault(boolean z) {
        this.notesByDefault = z;
    }

    public void setSlidesByDefault(boolean z) {
        this.slidesByDefault = z;
    }

    private void printTextParagraphs(List<P> list, Consumer<String> consumer, String str) {
        printTextParagraphs(list, consumer, str, new Function() { // from class: com.sunia.HTREnginev2.bum
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String replaceTextCap;
                replaceTextCap = SlideShowExtractor.replaceTextCap((TextRun) obj);
                return replaceTextCap;
            }
        });
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public SlideShow<S, P> getDocument() {
        return this.slideshow;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public SlideShow<S, P> getFilesystem() {
        return getDocument();
    }

    private void printTextParagraphs(List<P> list, Consumer<String> consumer, String str, Function<TextRun, String> function) {
        Iterator<P> it2 = list.iterator();
        while (it2.hasNext()) {
            for (TextRun textRun : it2.next()) {
                if (this.filter.test(textRun)) {
                    consumer.accept(function.apply(textRun));
                }
            }
            if (!str.isEmpty() && this.filter.test(str)) {
                consumer.accept(str);
            }
        }
    }

    private void printShapeText(ShapeContainer<S, P> shapeContainer, Consumer<String> consumer) {
        Iterator<S> it2 = shapeContainer.iterator();
        while (it2.hasNext()) {
            Shape shape = (Shape) it2.next();
            if (shape instanceof TextShape) {
                printTextParagraphs(((TextShape) shape).getTextParagraphs(), consumer);
            } else if (shape instanceof TableShape) {
                printShapeText((TableShape) shape, consumer);
            } else if (shape instanceof ShapeContainer) {
                printShapeText((ShapeContainer) shape, consumer);
            }
        }
    }

    public String getText(Slide<S, P> slide) {
        StringBuilder sb = new StringBuilder();
        getText(slide, new jum(sb));
        return sb.toString();
    }

    private void getText(Slide<S, P> slide, Consumer<String> consumer) {
        if (this.slidesByDefault) {
            printShapeText((Sheet) slide, consumer);
        }
        if (this.masterByDefault) {
            MasterSheet<S, P> masterSheet = slide.getMasterSheet();
            printSlideMaster(masterSheet, consumer);
            MasterSheet<S, P> slideLayout = slide.getSlideLayout();
            if (slideLayout != masterSheet) {
                printSlideMaster(slideLayout, consumer);
            }
        }
        if (this.commentsByDefault) {
            printComments(slide, consumer);
        }
        if (this.notesByDefault) {
            printNotes(slide, consumer);
        }
    }

    private void printShapeText(TableShape<S, P> tableShape, Consumer<String> consumer) {
        int numberOfRows = tableShape.getNumberOfRows();
        int numberOfColumns = tableShape.getNumberOfColumns();
        for (int i = 0; i < numberOfRows; i++) {
            String str = "";
            int i2 = 0;
            while (true) {
                if (i2 >= numberOfColumns) {
                    break;
                }
                TableCell<S, P> cell2 = tableShape.getCell2(i, i2);
                if (cell2 != null) {
                    String str2 = i2 < numberOfColumns + (-1) ? "\t" : "\n";
                    printTextParagraphs(cell2.getTextParagraphs(), consumer, str2);
                    str = str2;
                }
                i2++;
            }
            if (!str.equals("\n") && this.filter.test("\n")) {
                consumer.accept("\n");
            }
        }
    }
}
