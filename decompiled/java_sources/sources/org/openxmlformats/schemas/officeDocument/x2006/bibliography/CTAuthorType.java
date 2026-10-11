package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAuthorType extends XmlObject {
    public static final DocumentFactory<CTAuthorType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAuthorType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctauthortyped347type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNameType addNewArtist();

    CTNameOrCorporateType addNewAuthor();

    CTNameType addNewBookAuthor();

    CTNameType addNewCompiler();

    CTNameType addNewComposer();

    CTNameType addNewConductor();

    CTNameType addNewCounsel();

    CTNameType addNewDirector();

    CTNameType addNewEditor();

    CTNameType addNewInterviewee();

    CTNameType addNewInterviewer();

    CTNameType addNewInventor();

    CTNameOrCorporateType addNewPerformer();

    CTNameType addNewProducerName();

    CTNameType addNewTranslator();

    CTNameType addNewWriter();

    CTNameType getArtistArray(int i);

    CTNameType[] getArtistArray();

    List<CTNameType> getArtistList();

    CTNameOrCorporateType getAuthorArray(int i);

    CTNameOrCorporateType[] getAuthorArray();

    List<CTNameOrCorporateType> getAuthorList();

    CTNameType getBookAuthorArray(int i);

    CTNameType[] getBookAuthorArray();

    List<CTNameType> getBookAuthorList();

    CTNameType getCompilerArray(int i);

    CTNameType[] getCompilerArray();

    List<CTNameType> getCompilerList();

    CTNameType getComposerArray(int i);

    CTNameType[] getComposerArray();

    List<CTNameType> getComposerList();

    CTNameType getConductorArray(int i);

    CTNameType[] getConductorArray();

    List<CTNameType> getConductorList();

    CTNameType getCounselArray(int i);

    CTNameType[] getCounselArray();

    List<CTNameType> getCounselList();

    CTNameType getDirectorArray(int i);

    CTNameType[] getDirectorArray();

    List<CTNameType> getDirectorList();

    CTNameType getEditorArray(int i);

    CTNameType[] getEditorArray();

    List<CTNameType> getEditorList();

    CTNameType getIntervieweeArray(int i);

    CTNameType[] getIntervieweeArray();

    List<CTNameType> getIntervieweeList();

    CTNameType getInterviewerArray(int i);

    CTNameType[] getInterviewerArray();

    List<CTNameType> getInterviewerList();

    CTNameType getInventorArray(int i);

    CTNameType[] getInventorArray();

    List<CTNameType> getInventorList();

    CTNameOrCorporateType getPerformerArray(int i);

    CTNameOrCorporateType[] getPerformerArray();

    List<CTNameOrCorporateType> getPerformerList();

    CTNameType getProducerNameArray(int i);

    CTNameType[] getProducerNameArray();

    List<CTNameType> getProducerNameList();

    CTNameType getTranslatorArray(int i);

    CTNameType[] getTranslatorArray();

    List<CTNameType> getTranslatorList();

    CTNameType getWriterArray(int i);

    CTNameType[] getWriterArray();

    List<CTNameType> getWriterList();

    CTNameType insertNewArtist(int i);

    CTNameOrCorporateType insertNewAuthor(int i);

    CTNameType insertNewBookAuthor(int i);

    CTNameType insertNewCompiler(int i);

    CTNameType insertNewComposer(int i);

    CTNameType insertNewConductor(int i);

    CTNameType insertNewCounsel(int i);

    CTNameType insertNewDirector(int i);

    CTNameType insertNewEditor(int i);

    CTNameType insertNewInterviewee(int i);

    CTNameType insertNewInterviewer(int i);

    CTNameType insertNewInventor(int i);

    CTNameOrCorporateType insertNewPerformer(int i);

    CTNameType insertNewProducerName(int i);

    CTNameType insertNewTranslator(int i);

    CTNameType insertNewWriter(int i);

    void removeArtist(int i);

    void removeAuthor(int i);

    void removeBookAuthor(int i);

    void removeCompiler(int i);

    void removeComposer(int i);

    void removeConductor(int i);

    void removeCounsel(int i);

    void removeDirector(int i);

    void removeEditor(int i);

    void removeInterviewee(int i);

    void removeInterviewer(int i);

    void removeInventor(int i);

    void removePerformer(int i);

    void removeProducerName(int i);

    void removeTranslator(int i);

    void removeWriter(int i);

    void setArtistArray(int i, CTNameType cTNameType);

    void setArtistArray(CTNameType[] cTNameTypeArr);

    void setAuthorArray(int i, CTNameOrCorporateType cTNameOrCorporateType);

    void setAuthorArray(CTNameOrCorporateType[] cTNameOrCorporateTypeArr);

    void setBookAuthorArray(int i, CTNameType cTNameType);

    void setBookAuthorArray(CTNameType[] cTNameTypeArr);

    void setCompilerArray(int i, CTNameType cTNameType);

    void setCompilerArray(CTNameType[] cTNameTypeArr);

    void setComposerArray(int i, CTNameType cTNameType);

    void setComposerArray(CTNameType[] cTNameTypeArr);

    void setConductorArray(int i, CTNameType cTNameType);

    void setConductorArray(CTNameType[] cTNameTypeArr);

    void setCounselArray(int i, CTNameType cTNameType);

    void setCounselArray(CTNameType[] cTNameTypeArr);

    void setDirectorArray(int i, CTNameType cTNameType);

    void setDirectorArray(CTNameType[] cTNameTypeArr);

    void setEditorArray(int i, CTNameType cTNameType);

    void setEditorArray(CTNameType[] cTNameTypeArr);

    void setIntervieweeArray(int i, CTNameType cTNameType);

    void setIntervieweeArray(CTNameType[] cTNameTypeArr);

    void setInterviewerArray(int i, CTNameType cTNameType);

    void setInterviewerArray(CTNameType[] cTNameTypeArr);

    void setInventorArray(int i, CTNameType cTNameType);

    void setInventorArray(CTNameType[] cTNameTypeArr);

    void setPerformerArray(int i, CTNameOrCorporateType cTNameOrCorporateType);

    void setPerformerArray(CTNameOrCorporateType[] cTNameOrCorporateTypeArr);

    void setProducerNameArray(int i, CTNameType cTNameType);

    void setProducerNameArray(CTNameType[] cTNameTypeArr);

    void setTranslatorArray(int i, CTNameType cTNameType);

    void setTranslatorArray(CTNameType[] cTNameTypeArr);

    void setWriterArray(int i, CTNameType cTNameType);

    void setWriterArray(CTNameType[] cTNameTypeArr);

    int sizeOfArtistArray();

    int sizeOfAuthorArray();

    int sizeOfBookAuthorArray();

    int sizeOfCompilerArray();

    int sizeOfComposerArray();

    int sizeOfConductorArray();

    int sizeOfCounselArray();

    int sizeOfDirectorArray();

    int sizeOfEditorArray();

    int sizeOfIntervieweeArray();

    int sizeOfInterviewerArray();

    int sizeOfInventorArray();

    int sizeOfPerformerArray();

    int sizeOfProducerNameArray();

    int sizeOfTranslatorArray();

    int sizeOfWriterArray();
}
