package org.apache.poi.xdgf.usermodel.section;

import androidx.constraintlayout.helper.widget.Layer;
import com.microsoft.schemas.office.visio.x2012.main.SectionType;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.util.Internal;
import org.apache.poi.xdgf.usermodel.XDGFSheet;
import org.apache.poi.xdgf.usermodel.section.CharacterSection;
import org.apache.poi.xdgf.usermodel.section.GenericSection;
import org.apache.poi.xdgf.usermodel.section.GeometrySection;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes13.dex */
public enum XDGFSectionTypes {
    LINE_GRADIENT("LineGradient", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    FILL_GRADIENT("FillGradient", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    CHARACTER("Character", new BiFunction() { // from class: com.sunia.HTREnginev2.ilo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new CharacterSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    PARAGRAPH("Paragraph", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    TABS("Tabs", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    SCRATCH("Scratch", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    CONNECTION("Connection", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    CONNECTION_ABCD("ConnectionABCD", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    FIELD("Field", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    CONTROL("Control", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    GEOMETRY("Geometry", new BiFunction() { // from class: com.sunia.HTREnginev2.hlo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GeometrySection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    ACTIONS("Actions", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    LAYER(Layer.f3474r, new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    USER("User", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    PROPERTY("Property", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    HYPERLINK("Hyperlink", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    REVIEWER("Reviewer", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    ANNOTATION("Annotation", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    }),
    ACTION_TAG("ActionTag", new BiFunction() { // from class: com.sunia.HTREnginev2.glo
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return new GenericSection((SectionType) obj, (XDGFSheet) obj2);
        }
    });

    private static final Map<String, XDGFSectionTypes> LOOKUP = (Map) Stream.of((Object[]) values()).collect(Collectors.toMap(new Function() { // from class: org.apache.poi.xdgf.usermodel.section.b
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((XDGFSectionTypes) obj).getSectionType();
        }
    }, Function.identity()));
    private final BiFunction<SectionType, XDGFSheet, ? extends XDGFSection> constructor;
    private final String sectionType;

    XDGFSectionTypes(String str, BiFunction biFunction) {
        this.sectionType = str;
        this.constructor = biFunction;
    }

    public static XDGFSection load(SectionType sectionType, XDGFSheet xDGFSheet) {
        String n = sectionType.getN();
        XDGFSectionTypes xDGFSectionTypes = LOOKUP.get(n);
        if (xDGFSectionTypes != null) {
            return xDGFSectionTypes.constructor.apply(sectionType, xDGFSheet);
        }
        throw new POIXMLException("Invalid '" + sectionType.schemaType().getName().getLocalPart() + "' name '" + n + CloudStorageConstants.SINGLE_QUOTES);
    }

    public String getSectionType() {
        return this.sectionType;
    }
}
