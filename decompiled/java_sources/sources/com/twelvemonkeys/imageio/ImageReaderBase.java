package com.twelvemonkeys.imageio;

import com.google.android.material.motion.MotionUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.twelvemonkeys.image.BufferedImageIcon;
import com.twelvemonkeys.image.ImageUtil;
import com.twelvemonkeys.imageio.util.IIOUtil;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Cursor;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsEnvironment;
import java.awt.Image;
import java.awt.Paint;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.TexturePaint;
import java.awt.Toolkit;
import java.awt.Window;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.image.BufferedImage;
import java.awt.image.IndexColorModel;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.ButtonGroup;
import javax.swing.Icon;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JColorChooser;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JScrollPane;
import javax.swing.KeyStroke;
import javax.swing.SwingUtilities;
import javax.swing.TransferHandler;
import javax.swing.border.Border;

/* loaded from: classes10.dex */
public abstract class ImageReaderBase extends ImageReader {

    /* renamed from: e */
    public static final Point f93991e = new Point(0, 0);
    protected ImageInputStream imageInput;

    /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$a */
    /* loaded from: classes10.dex */
    public static class RunnableC16939a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ String f93992e;

        /* renamed from: f */
        public final /* synthetic */ BufferedImage f93993f;

        /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$a$a */
        /* loaded from: classes10.dex */
        public class a extends AbstractAction {
            public a() {
            }

            /* renamed from: a */
            public void m60406a(ActionEvent actionEvent) {
                Window windowAncestor = SwingUtilities.getWindowAncestor((Component) actionEvent.getSource());
                windowAncestor.setVisible(false);
                windowAncestor.dispose();
            }
        }

        public RunnableC16939a(String str, BufferedImage bufferedImage) {
            this.f93992e = str;
            this.f93993f = bufferedImage;
        }

        @Override // java.lang.Runnable
        public void run() {
            JFrame jFrame = new JFrame(this.f93992e);
            jFrame.getRootPane().getActionMap().put("window-close", new a());
            jFrame.getRootPane().getInputMap().put(KeyStroke.getKeyStroke(87, Toolkit.getDefaultToolkit().getMenuShortcutKeyMask()), "window-close");
            jFrame.addWindowListener(new C16940b(null));
            jFrame.setDefaultCloseOperation(2);
            jFrame.setLocationByPlatform(true);
            JPanel jPanel = new JPanel(new BorderLayout());
            JScrollPane jScrollPane = new JScrollPane(this.f93993f != null ? new C16941c(this.f93993f) : new JLabel("(no image data)", 0));
            jScrollPane.setBorder((Border) null);
            jPanel.add(jScrollPane);
            jFrame.setContentPane(jPanel);
            jFrame.pack();
            jFrame.setVisible(true);
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$b */
    /* loaded from: classes10.dex */
    public static class C16940b extends WindowAdapter {
        public C16940b() {
        }

        /* renamed from: a */
        public void m60407a(WindowEvent windowEvent) {
            Window[] windows = Window.getWindows();
            if (windows == null || windows.length == 0) {
                System.exit(0);
            }
        }

        public /* synthetic */ C16940b(RunnableC16939a runnableC16939a) {
            this();
        }
    }

    public ImageReaderBase(ImageReaderSpi imageReaderSpi) {
        super(imageReaderSpi);
    }

    public static BufferedImage fakeAOI(BufferedImage bufferedImage, ImageReadParam imageReadParam) {
        return IIOUtil.fakeAOI(bufferedImage, ImageReader.getSourceRegion(imageReadParam, bufferedImage.getWidth(), bufferedImage.getHeight()));
    }

    public static Image fakeSubsampling(Image image, ImageReadParam imageReadParam) {
        return IIOUtil.fakeSubsampling(image, imageReadParam);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.BufferedImage getDestination(javax.imageio.ImageReadParam r9, java.util.Iterator<javax.imageio.ImageTypeSpecifier> r10, int r11, int r12) throws javax.imageio.IIOException {
        /*
            if (r10 == 0) goto Ld5
            boolean r0 = r10.hasNext()
            if (r0 == 0) goto Ld5
            r0 = 1
            r1 = 0
            if (r9 == 0) goto L65
            java.awt.image.BufferedImage r2 = r9.getDestination()
            if (r2 == 0) goto L60
        L12:
            boolean r9 = r10.hasNext()
            if (r9 == 0) goto L4c
            java.lang.Object r9 = r10.next()
            javax.imageio.ImageTypeSpecifier r9 = (javax.imageio.ImageTypeSpecifier) r9
            int r11 = r9.getBufferedImageType()
            if (r11 == 0) goto L2b
            int r12 = r2.getType()
            if (r11 != r12) goto L2b
            goto L4d
        L2b:
            java.awt.image.SampleModel r11 = r9.getSampleModel()
            int r11 = r11.getTransferType()
            java.awt.image.SampleModel r12 = r2.getSampleModel()
            int r12 = r12.getTransferType()
            if (r11 != r12) goto L12
            int r9 = r9.getNumBands()
            java.awt.image.SampleModel r11 = r2.getSampleModel()
            int r11 = r11.getNumBands()
            if (r9 > r11) goto L12
            goto L4d
        L4c:
            r0 = r1
        L4d:
            if (r0 == 0) goto L50
            return r2
        L50:
            javax.imageio.IIOException r9 = new javax.imageio.IIOException
            java.lang.String r10 = "Destination image from ImageReadParam does not match legal imageTypes from reader: %s"
            java.lang.Object[] r11 = new java.lang.Object[]{r2}
            java.lang.String r10 = java.lang.String.format(r10, r11)
            r9.<init>(r10)
            throw r9
        L60:
            javax.imageio.ImageTypeSpecifier r2 = r9.getDestinationType()
            goto L66
        L65:
            r2 = 0
        L66:
            if (r2 != 0) goto L70
            java.lang.Object r10 = r10.next()
            r2 = r10
            javax.imageio.ImageTypeSpecifier r2 = (javax.imageio.ImageTypeSpecifier) r2
            goto L86
        L70:
            boolean r3 = r10.hasNext()
            if (r3 == 0) goto L83
            java.lang.Object r3 = r10.next()
            javax.imageio.ImageTypeSpecifier r3 = (javax.imageio.ImageTypeSpecifier) r3
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L70
            goto L84
        L83:
            r0 = r1
        L84:
            if (r0 == 0) goto Lc5
        L86:
            java.awt.Rectangle r7 = new java.awt.Rectangle
            r7.<init>(r1, r1, r1, r1)
            java.awt.Rectangle r10 = new java.awt.Rectangle
            r10.<init>(r1, r1, r1, r1)
            r6 = 0
            r3 = r9
            r4 = r11
            r5 = r12
            r8 = r10
            javax.imageio.ImageReader.computeRegions(r3, r4, r5, r6, r7, r8)
            int r9 = r10.f97732x
            int r11 = r10.width
            int r9 = r9 + r11
            int r11 = r10.f97733y
            int r10 = r10.height
            int r11 = r11 + r10
            long r0 = (long) r9
            long r3 = (long) r11
            long r0 = r0 * r3
            r3 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r10 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r10 > 0) goto Lb1
            java.awt.image.BufferedImage r9 = r2.createBufferedImage(r9, r11)
            return r9
        Lb1:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.Long r10 = java.lang.Long.valueOf(r0)
            java.lang.Object[] r10 = new java.lang.Object[]{r10}
            java.lang.String r11 = "destination width * height > Integer.MAX_VALUE: %d"
            java.lang.String r10 = java.lang.String.format(r11, r10)
            r9.<init>(r10)
            throw r9
        Lc5:
            javax.imageio.IIOException r9 = new javax.imageio.IIOException
            java.lang.String r10 = "Destination type from ImageReadParam does not match legal imageTypes from reader: %s"
            java.lang.Object[] r11 = new java.lang.Object[]{r2}
            java.lang.String r10 = java.lang.String.format(r10, r11)
            r9.<init>(r10)
            throw r9
        Ld5:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "imageTypes null or empty!"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.ImageReaderBase.getDestination(javax.imageio.ImageReadParam, java.util.Iterator, int, int):java.awt.image.BufferedImage");
    }

    public static boolean hasExplicitDestination(ImageReadParam imageReadParam) {
        return (imageReadParam == null || (imageReadParam.getDestination() == null && imageReadParam.getDestinationType() == null && f93991e.equals(imageReadParam.getDestinationOffset()))) ? false : true;
    }

    public static void main(String[] strArr) throws IOException {
        BufferedImage read = ImageIO.read(new File(strArr[0]));
        if (read == null) {
            System.err.println("Supported formats: " + Arrays.toString(IIOUtil.getNormalizedReaderFormatNames()));
            System.exit(1);
        }
        showIt(read, strArr[0]);
    }

    public static void showIt(BufferedImage bufferedImage, String str) {
        try {
            SwingUtilities.invokeAndWait(new RunnableC16939a(str, bufferedImage));
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (InvocationTargetException e) {
            if (!(e.getCause() instanceof RuntimeException)) {
                throw new RuntimeException(e);
            }
            throw ((RuntimeException) e.getCause());
        }
    }

    public void assertInput() {
        if (getInput() == null) {
            throw new IllegalStateException("getInput() == null");
        }
    }

    public void checkBounds(int i) throws IOException {
        assertInput();
        if (i < getMinIndex()) {
            throw new IndexOutOfBoundsException("index < minIndex");
        }
        int numImages = getNumImages(false);
        if (numImages == -1 || i < numImages) {
            return;
        }
        throw new IndexOutOfBoundsException("index >= numImages (" + i + CloudStorageConstants.OPERATION_GREATER_EQUAL + numImages + MotionUtils.f31762d);
    }

    @Override // javax.imageio.ImageReader
    public void dispose() {
        resetMembers();
        super.dispose();
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IOException {
        return null;
    }

    @Override // javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IOException {
        assertInput();
        return 1;
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getStreamMetadata() throws IOException {
        return null;
    }

    @Override // javax.imageio.ImageReader
    public void reset() {
        resetMembers();
        super.reset();
    }

    public abstract void resetMembers();

    @Override // javax.imageio.ImageReader
    public void setInput(Object obj, boolean z, boolean z2) {
        resetMembers();
        super.setInput(obj, z, z2);
        if (obj instanceof ImageInputStream) {
            this.imageInput = (ImageInputStream) obj;
        } else {
            this.imageInput = null;
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c */
    /* loaded from: classes10.dex */
    public static class C16941c extends JLabel {

        /* renamed from: e */
        public static final String f93995e = "zoom-in";

        /* renamed from: f */
        public static final String f93996f = "zoom-out";

        /* renamed from: g */
        public static final String f93997g = "zoom-actual";

        /* renamed from: a */
        public BufferedImage f93998a;

        /* renamed from: b */
        public Paint f93999b;

        /* renamed from: c */
        public final Paint f94000c;

        /* renamed from: d */
        public final Color f94001d;

        /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c$a */
        /* loaded from: classes10.dex */
        public class a extends MouseAdapter {
            public a() {
            }

            /* renamed from: a */
            public void m60417a(MouseEvent mouseEvent) {
                if (mouseEvent.isPopupTrigger()) {
                    C16941c.this.getComponentPopupMenu().show(C16941c.this, mouseEvent.getX(), mouseEvent.getY());
                }
            }
        }

        /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c$b */
        /* loaded from: classes10.dex */
        public class b extends TransferHandler {
            public b() {
            }

            /* renamed from: a */
            public boolean m60418a(JComponent jComponent, DataFlavor[] dataFlavorArr) {
                for (DataFlavor dataFlavor : dataFlavorArr) {
                    if (dataFlavor.equals(DataFlavor.imageFlavor)) {
                        return true;
                    }
                }
                return false;
            }

            /* renamed from: b */
            public Transferable m60419b(JComponent jComponent) {
                return new e(C16941c.this.f93998a);
            }

            /* renamed from: c */
            public int m60420c(JComponent jComponent) {
                return 1;
            }

            /* renamed from: d */
            public boolean m60421d(JComponent jComponent, Transferable transferable) {
                if (!m60418a(jComponent, transferable.getTransferDataFlavors())) {
                    return false;
                }
                try {
                    Image image = (Image) transferable.getTransferData(DataFlavor.imageFlavor);
                    C16941c.this.f93998a = ImageUtil.toBuffered(image);
                    C16941c c16941c = C16941c.this;
                    c16941c.setIcon(new BufferedImageIcon(c16941c.f93998a));
                    return true;
                } catch (UnsupportedFlavorException | IOException unused) {
                    return false;
                }
            }
        }

        /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c$c */
        /* loaded from: classes10.dex */
        public class c extends AbstractAction {

            /* renamed from: a */
            public Paint f94004a;

            public c(String str, Paint paint) {
                super(str);
                this.f94004a = paint;
            }

            /* renamed from: a */
            public void mo60422a(ActionEvent actionEvent) {
                C16941c c16941c = C16941c.this;
                c16941c.f93999b = this.f94004a;
                c16941c.repaint();
            }
        }

        /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c$d */
        /* loaded from: classes10.dex */
        public class d extends c {

            /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c$d$a */
            /* loaded from: classes10.dex */
            public class a implements Icon {

                /* renamed from: a */
                public final /* synthetic */ C16941c f94007a;

                public a(C16941c c16941c) {
                    this.f94007a = c16941c;
                }

                @Override // javax.swing.Icon
                public int getIconHeight() {
                    return 16;
                }

                @Override // javax.swing.Icon
                public int getIconWidth() {
                    return 16;
                }

                @Override // javax.swing.Icon
                public void paintIcon(Component component, Graphics graphics, int i, int i2) {
                    Graphics create = graphics.create();
                    create.setColor((Color) d.this.f94004a);
                    create.fillRect(i, i2, 16, 16);
                    create.dispose();
                }
            }

            public d(String str, Color color) {
                super(str, color);
                putValue("SmallIcon", new a(C16941c.this));
            }

            @Override // com.twelvemonkeys.imageio.ImageReaderBase.C16941c.c
            /* renamed from: a */
            public void mo60422a(ActionEvent actionEvent) {
                Color showDialog = JColorChooser.showDialog(C16941c.this, "Choose background", (Color) this.f94004a);
                if (showDialog != null) {
                    this.f94004a = showDialog;
                    super.mo60422a(actionEvent);
                }
            }
        }

        /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c$e */
        /* loaded from: classes10.dex */
        public static class e implements Transferable {

            /* renamed from: a */
            public final BufferedImage f94009a;

            public e(BufferedImage bufferedImage) {
                this.f94009a = bufferedImage;
            }

            /* renamed from: a */
            public Object m60423a(DataFlavor dataFlavor) throws UnsupportedFlavorException, IOException {
                if (m60425c(dataFlavor)) {
                    return this.f94009a;
                }
                throw new UnsupportedFlavorException(dataFlavor);
            }

            /* renamed from: b */
            public DataFlavor[] m60424b() {
                return new DataFlavor[]{DataFlavor.imageFlavor};
            }

            /* renamed from: c */
            public boolean m60425c(DataFlavor dataFlavor) {
                return DataFlavor.imageFlavor.equals(dataFlavor);
            }
        }

        public C16941c(BufferedImage bufferedImage) {
            super(new BufferedImageIcon(bufferedImage));
            setOpaque(false);
            setCursor(Cursor.getPredefinedCursor(1));
            this.f93998a = bufferedImage;
            Paint m60410f = m60410f();
            this.f94000c = m60410f;
            Color m60411g = m60411g(bufferedImage);
            this.f94001d = m60411g;
            this.f93999b = m60411g != null ? m60411g : m60410f;
            m60416i();
            setComponentPopupMenu(m60414e());
            addMouseListener(new a());
            setTransferHandler(new b());
        }

        /* renamed from: f */
        public static Paint m60410f() {
            BufferedImage createCompatibleImage = GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().getDefaultConfiguration().createCompatibleImage(20, 20);
            Graphics2D createGraphics = createCompatibleImage.createGraphics();
            try {
                createGraphics.setColor(Color.LIGHT_GRAY);
                createGraphics.fillRect(0, 0, createCompatibleImage.getWidth(), createCompatibleImage.getHeight());
                createGraphics.setColor(Color.GRAY);
                createGraphics.fillRect(0, 0, createCompatibleImage.getWidth() / 2, createCompatibleImage.getHeight() / 2);
                createGraphics.fillRect(createCompatibleImage.getWidth() / 2, createCompatibleImage.getHeight() / 2, createCompatibleImage.getWidth() / 2, createCompatibleImage.getHeight() / 2);
                createGraphics.dispose();
                return new TexturePaint(createCompatibleImage, new Rectangle(createCompatibleImage.getWidth(), createCompatibleImage.getHeight()));
            } catch (Throwable th) {
                createGraphics.dispose();
                throw th;
            }
        }

        /* renamed from: g */
        public static Color m60411g(BufferedImage bufferedImage) {
            IndexColorModel indexColorModel;
            int transparentPixel;
            if (!(bufferedImage.getColorModel() instanceof IndexColorModel) || (transparentPixel = (indexColorModel = (IndexColorModel) bufferedImage.getColorModel()).getTransparentPixel()) < 0) {
                return null;
            }
            return new Color(indexColorModel.getRGB(transparentPixel), false);
        }

        /* renamed from: c */
        public final void m60412c(Action action, JMenu jMenu, ButtonGroup buttonGroup) {
            JCheckBoxMenuItem jCheckBoxMenuItem = new JCheckBoxMenuItem(action);
            buttonGroup.add(jCheckBoxMenuItem);
            jMenu.add(jCheckBoxMenuItem);
        }

        /* renamed from: d */
        public final void m60413d(Action action, String str, KeyStroke... keyStrokeArr) {
            for (KeyStroke keyStroke : keyStrokeArr) {
                getInputMap(2).put(keyStroke, str);
            }
            getActionMap().put(str, action);
        }

        /* renamed from: e */
        public final JPopupMenu m60414e() {
            JPopupMenu jPopupMenu = new JPopupMenu();
            jPopupMenu.add(getActionMap().get(f93997g));
            jPopupMenu.add(getActionMap().get(f93995e));
            jPopupMenu.add(getActionMap().get(f93996f));
            jPopupMenu.addSeparator();
            ButtonGroup buttonGroup = new ButtonGroup();
            JMenu jMenu = new JMenu("Background");
            jPopupMenu.add(jMenu);
            c cVar = new c("Checkered", this.f94000c);
            cVar.putValue("SwingSelectedKey", Boolean.valueOf(this.f93999b == this.f94000c));
            m60412c(cVar, jMenu, buttonGroup);
            jMenu.addSeparator();
            m60412c(new c("White", Color.WHITE), jMenu, buttonGroup);
            m60412c(new c("Light", Color.LIGHT_GRAY), jMenu, buttonGroup);
            m60412c(new c("Gray", Color.GRAY), jMenu, buttonGroup);
            m60412c(new c("Dark", Color.DARK_GRAY), jMenu, buttonGroup);
            m60412c(new c("Black", Color.BLACK), jMenu, buttonGroup);
            jMenu.addSeparator();
            Color color = this.f94001d;
            if (color == null) {
                color = Color.BLUE;
            }
            d dVar = new d("Choose...", color);
            dVar.putValue("SwingSelectedKey", Boolean.valueOf(this.f93999b == this.f94001d));
            m60412c(dVar, jMenu, buttonGroup);
            return jPopupMenu;
        }

        /* renamed from: h */
        public void m60415h(Graphics graphics) {
            Graphics2D graphics2D = (Graphics2D) graphics;
            graphics2D.setPaint(this.f93999b);
            graphics2D.fillRect(0, 0, getWidth(), getHeight());
            super.paintComponent(graphics);
        }

        /* renamed from: i */
        public final void m60416i() {
            m60413d(new f("Zoom in", 2.0d), f93995e, KeyStroke.getKeyStroke(PhoneNumberUtil.f36455s), KeyStroke.getKeyStroke(107, 0));
            m60413d(new f("Zoom out", 0.5d), f93996f, KeyStroke.getKeyStroke('-'), KeyStroke.getKeyStroke(109, 0));
            m60413d(new f(this, "Zoom actual"), f93997g, KeyStroke.getKeyStroke('0'), KeyStroke.getKeyStroke(48, 0));
            m60413d(TransferHandler.getCopyAction(), (String) TransferHandler.getCopyAction().getValue("Name"), KeyStroke.getKeyStroke(67, Toolkit.getDefaultToolkit().getMenuShortcutKeyMask()));
            m60413d(TransferHandler.getPasteAction(), (String) TransferHandler.getPasteAction().getValue("Name"), KeyStroke.getKeyStroke(86, Toolkit.getDefaultToolkit().getMenuShortcutKeyMask()));
        }

        /* renamed from: com.twelvemonkeys.imageio.ImageReaderBase$c$f */
        /* loaded from: classes10.dex */
        public class f extends AbstractAction {

            /* renamed from: a */
            public final double f94010a;

            public f(String str, double d) {
                super(str);
                this.f94010a = d;
            }

            /* renamed from: a */
            public void m60426a(ActionEvent actionEvent) {
                if (this.f94010a <= 0.0d) {
                    C16941c c16941c = C16941c.this;
                    c16941c.setIcon(new BufferedImageIcon(c16941c.f93998a));
                    return;
                }
                Icon icon = C16941c.this.getIcon();
                int max = (int) Math.max(Math.min(icon.getIconWidth() * this.f94010a, C16941c.this.f93998a.getWidth() * 16), C16941c.this.f93998a.getWidth() / 16);
                int max2 = (int) Math.max(Math.min(icon.getIconHeight() * this.f94010a, C16941c.this.f93998a.getHeight() * 16), C16941c.this.f93998a.getHeight() / 16);
                C16941c c16941c2 = C16941c.this;
                c16941c2.setIcon(new BufferedImageIcon(c16941c2.f93998a, Math.max(max, 2), Math.max(max2, 2), max > C16941c.this.f93998a.getWidth() || max2 > C16941c.this.f93998a.getHeight()));
            }

            public f(C16941c c16941c, String str) {
                this(str, 0.0d);
            }
        }
    }
}
