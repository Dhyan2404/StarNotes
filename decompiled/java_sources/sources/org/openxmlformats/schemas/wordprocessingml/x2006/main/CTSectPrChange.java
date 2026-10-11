package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTSectPrChange extends CTTrackChange {
    public static final DocumentFactory<CTSectPrChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSectPrChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsectprchangee2d3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSectPrBase addNewSectPr();

    CTSectPrBase getSectPr();

    boolean isSetSectPr();

    void setSectPr(CTSectPrBase cTSectPrBase);

    void unsetSectPr();
}
