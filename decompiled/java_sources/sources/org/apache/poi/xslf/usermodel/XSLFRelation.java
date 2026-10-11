package org.apache.poi.xslf.usermodel;

import com.sunia.HTREnginev2.hoo;
import com.sunia.HTREnginev2.ioo;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.XSLFCommentAuthors;
import org.apache.poi.xslf.usermodel.XSLFComments;
import org.apache.poi.xslf.usermodel.XSLFDiagramDrawing;
import org.apache.poi.xslf.usermodel.XSLFFontData;
import org.apache.poi.xslf.usermodel.XSLFNotes;
import org.apache.poi.xslf.usermodel.XSLFNotesMaster;
import org.apache.poi.xslf.usermodel.XSLFObjectData;
import org.apache.poi.xslf.usermodel.XSLFPictureData;
import org.apache.poi.xslf.usermodel.XSLFSlide;
import org.apache.poi.xslf.usermodel.XSLFSlideLayout;
import org.apache.poi.xslf.usermodel.XSLFSlideMaster;
import org.apache.poi.xslf.usermodel.XSLFTableStyles;
import org.apache.poi.xslf.usermodel.XSLFTheme;

/* loaded from: classes13.dex */
public final class XSLFRelation extends POIXMLRelation {
    public static final XSLFRelation FONT;
    public static final XSLFRelation HDPHOTO_WDP;
    public static final XSLFRelation IMAGES;
    public static final XSLFRelation IMAGE_SVG;
    public static final XSLFRelation IMAGE_WDP;
    static final String NS_DRAWINGML = "http://schemas.openxmlformats.org/drawingml/2006/main";
    public static final XSLFRelation OLE_OBJECT;
    public static final XSLFRelation TABLE_STYLES;
    private static final Map<String, XSLFRelation> _table = new HashMap();
    public static final XSLFRelation MAIN = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.presentation.main+xml");
    public static final XSLFRelation MACRO = new XSLFRelation("application/vnd.ms-powerpoint.slideshow.macroEnabled.main+xml");
    public static final XSLFRelation MACRO_TEMPLATE = new XSLFRelation("application/vnd.ms-powerpoint.template.macroEnabled.main+xml");
    public static final XSLFRelation PRESENTATIONML = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.slideshow.main+xml");
    public static final XSLFRelation PRESENTATIONML_TEMPLATE = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.template.main+xml");
    public static final XSLFRelation PRESENTATION_MACRO = new XSLFRelation("application/vnd.ms-powerpoint.presentation.macroEnabled.main+xml");
    public static final XSLFRelation THEME_MANAGER = new XSLFRelation("application/vnd.openxmlformats-officedocument.themeManager+xml");
    public static final XSLFRelation NOTES = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.notesSlide+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesSlide", "/ppt/notesSlides/notesSlide#.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.kno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFNotes();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.mno
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFNotes(packagePart);
        }
    });
    public static final XSLFRelation SLIDE = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.slide+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide", "/ppt/slides/slide#.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.pno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFSlide();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.qno
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFSlide(packagePart);
        }
    });
    public static final XSLFRelation SLIDE_LAYOUT = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.slideLayout+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout", "/ppt/slideLayouts/slideLayout#.xml", null, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.rno
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFSlideLayout(packagePart);
        }
    });
    public static final XSLFRelation SLIDE_MASTER = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.slideMaster+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster", "/ppt/slideMasters/slideMaster#.xml", null, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.zno
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFSlideMaster(packagePart);
        }
    });
    public static final XSLFRelation NOTES_MASTER = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.notesMaster+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesMaster", "/ppt/notesMasters/notesMaster#.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.aoo
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFNotesMaster();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.boo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFNotesMaster(packagePart);
        }
    });
    public static final XSLFRelation COMMENTS = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.comments+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments", "/ppt/comments/comment#.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.coo
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFComments();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.doo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFComments(packagePart);
        }
    });
    public static final XSLFRelation COMMENT_AUTHORS = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.commentAuthors+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/commentAuthors", "/ppt/commentAuthors.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.vno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFCommentAuthors();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.eoo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFCommentAuthors(packagePart);
        }
    });
    public static final XSLFRelation HYPERLINK = new XSLFRelation(null, PackageRelationshipTypes.HYPERLINK_PART, null);
    public static final XSLFRelation THEME = new XSLFRelation("application/vnd.openxmlformats-officedocument.theme+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme", "/ppt/theme/theme#.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.foo
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFTheme();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.goo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFTheme(packagePart);
        }
    });
    public static final XSLFRelation VML_DRAWING = new XSLFRelation("application/vnd.openxmlformats-officedocument.vmlDrawing", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing", "/ppt/drawings/vmlDrawing#.vml");
    public static final XSLFRelation WORKBOOK = new XSLFRelation("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", POIXMLDocument.PACK_OBJECT_REL_TYPE, "/ppt/embeddings/Microsoft_Excel_Worksheet#.xlsx", new hoo(), new ioo());
    public static final XSLFRelation CHART = new XSLFRelation("application/vnd.openxmlformats-officedocument.drawingml.chart+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chart", "/ppt/charts/chart#.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.joo
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFChart();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.koo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFChart(packagePart);
        }
    });
    public static final XSLFRelation DIAGRAM_DRAWING = new XSLFRelation("application/vnd.ms-office.drawingml.diagramDrawing+xml", "http://schemas.microsoft.com/office/2007/relationships/diagramDrawing", "/ppt/diagrams/drawing#.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.loo
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFDiagramDrawing();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.lno
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFDiagramDrawing(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_EMF = new XSLFRelation(PictureData.PictureType.EMF.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.emf", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_WMF = new XSLFRelation(PictureData.PictureType.WMF.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.wmf", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_PICT = new XSLFRelation(PictureData.PictureType.PICT.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.pict", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_JPEG = new XSLFRelation(PictureData.PictureType.JPEG.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.jpeg", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_PNG = new XSLFRelation(PictureData.PictureType.PNG.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.png", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_DIB = new XSLFRelation(PictureData.PictureType.DIB.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.dib", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_GIF = new XSLFRelation(PictureData.PictureType.GIF.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.gif", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_TIFF = new XSLFRelation(PictureData.PictureType.TIFF.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.tiff", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_EPS = new XSLFRelation(PictureData.PictureType.EPS.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.eps", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_BMP = new XSLFRelation(PictureData.PictureType.BMP.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.bmp", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });
    public static final XSLFRelation IMAGE_WPG = new XSLFRelation(PictureData.PictureType.WPG.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.wpg", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
        @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
        public final POIXMLDocumentPart init() {
            return new XSLFPictureData();
        }
    }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XSLFPictureData(packagePart);
        }
    });

    static {
        PictureData.PictureType pictureType = PictureData.PictureType.WDP;
        IMAGE_WDP = new XSLFRelation(pictureType.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.wdp", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
            @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
            public final POIXMLDocumentPart init() {
                return new XSLFPictureData();
            }
        }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
            @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
            public final POIXMLDocumentPart init(PackagePart packagePart) {
                return new XSLFPictureData(packagePart);
            }
        });
        HDPHOTO_WDP = new XSLFRelation(pictureType.contentType, PackageRelationshipTypes.HDPHOTO_PART, "/ppt/media/hdphoto#.wdp", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
            @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
            public final POIXMLDocumentPart init() {
                return new XSLFPictureData();
            }
        }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
            @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
            public final POIXMLDocumentPart init(PackagePart packagePart) {
                return new XSLFPictureData(packagePart);
            }
        });
        IMAGE_SVG = new XSLFRelation(PictureData.PictureType.SVG.contentType, PackageRelationshipTypes.IMAGE_PART, "/ppt/media/image#.svg", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
            @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
            public final POIXMLDocumentPart init() {
                return new XSLFPictureData();
            }
        }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
            @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
            public final POIXMLDocumentPart init(PackagePart packagePart) {
                return new XSLFPictureData(packagePart);
            }
        });
        IMAGES = new XSLFRelation(null, PackageRelationshipTypes.IMAGE_PART, null, new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.nno
            @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
            public final POIXMLDocumentPart init() {
                return new XSLFPictureData();
            }
        }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.ono
            @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
            public final POIXMLDocumentPart init(PackagePart packagePart) {
                return new XSLFPictureData(packagePart);
            }
        });
        TABLE_STYLES = new XSLFRelation("application/vnd.openxmlformats-officedocument.presentationml.tableStyles+xml", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableStyles", "/ppt/tableStyles.xml", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.sno
            @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
            public final POIXMLDocumentPart init() {
                return new XSLFTableStyles();
            }
        }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.tno
            @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
            public final POIXMLDocumentPart init(PackagePart packagePart) {
                return new XSLFTableStyles(packagePart);
            }
        });
        OLE_OBJECT = new XSLFRelation("application/vnd.openxmlformats-officedocument.oleObject", POIXMLDocument.OLE_OBJECT_REL_TYPE, "/ppt/embeddings/oleObject#.bin", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.uno
            @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
            public final POIXMLDocumentPart init() {
                return new XSLFObjectData();
            }
        }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.wno
            @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
            public final POIXMLDocumentPart init(PackagePart packagePart) {
                return new XSLFObjectData(packagePart);
            }
        });
        FONT = new XSLFRelation("application/x-fontdata", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/font", "/ppt/fonts/font#.fntdata", new POIXMLRelation.NoArgConstructor() { // from class: com.sunia.HTREnginev2.xno
            @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
            public final POIXMLDocumentPart init() {
                return new XSLFFontData();
            }
        }, new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.yno
            @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
            public final POIXMLDocumentPart init(PackagePart packagePart) {
                return new XSLFFontData(packagePart);
            }
        });
    }

    private XSLFRelation(String str) {
        this(str, null, null, null, null);
    }

    public static XSLFRelation getInstance(String str) {
        return _table.get(str);
    }

    private XSLFRelation(String str, String str2, String str3) {
        this(str, str2, str3, null, null);
    }

    private XSLFRelation(String str, String str2, String str3, POIXMLRelation.NoArgConstructor noArgConstructor, POIXMLRelation.PackagePartConstructor packagePartConstructor) {
        super(str, str2, str3, noArgConstructor, packagePartConstructor, null);
        _table.put(str2, this);
    }
}
