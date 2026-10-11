.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctauthortyped347type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewArtist()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewAuthor()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract addNewBookAuthor()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewCompiler()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewComposer()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewConductor()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewCounsel()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewDirector()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewEditor()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewInterviewee()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewInterviewer()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewInventor()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewPerformer()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract addNewProducerName()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewTranslator()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract addNewWriter()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getArtistArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getArtistArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getArtistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract getAuthorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract getAuthorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookAuthorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getBookAuthorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getBookAuthorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCompilerArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getCompilerArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getCompilerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComposerArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getComposerArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getComposerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConductorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getConductorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getConductorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCounselArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getCounselArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getCounselList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirectorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getDirectorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getDirectorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEditorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getEditorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getEditorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntervieweeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getIntervieweeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getIntervieweeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInterviewerArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getInterviewerArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getInterviewerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInventorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getInventorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getInventorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPerformerArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract getPerformerArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract getPerformerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProducerNameArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getProducerNameArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getProducerNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTranslatorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getTranslatorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getTranslatorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWriterArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getWriterArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract getWriterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewArtist(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewAuthor(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract insertNewBookAuthor(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewCompiler(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewComposer(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewConductor(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewCounsel(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewDirector(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewEditor(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewInterviewee(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewInterviewer(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewInventor(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewPerformer(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.end method

.method public abstract insertNewProducerName(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewTranslator(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract insertNewWriter(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;
.end method

.method public abstract removeArtist(I)V
.end method

.method public abstract removeAuthor(I)V
.end method

.method public abstract removeBookAuthor(I)V
.end method

.method public abstract removeCompiler(I)V
.end method

.method public abstract removeComposer(I)V
.end method

.method public abstract removeConductor(I)V
.end method

.method public abstract removeCounsel(I)V
.end method

.method public abstract removeDirector(I)V
.end method

.method public abstract removeEditor(I)V
.end method

.method public abstract removeInterviewee(I)V
.end method

.method public abstract removeInterviewer(I)V
.end method

.method public abstract removeInventor(I)V
.end method

.method public abstract removePerformer(I)V
.end method

.method public abstract removeProducerName(I)V
.end method

.method public abstract removeTranslator(I)V
.end method

.method public abstract removeWriter(I)V
.end method

.method public abstract setArtistArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setArtistArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setAuthorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;)V
.end method

.method public abstract setAuthorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;)V
.end method

.method public abstract setBookAuthorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setBookAuthorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setCompilerArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setCompilerArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setComposerArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setComposerArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setConductorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setConductorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setCounselArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setCounselArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setDirectorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setDirectorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setEditorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setEditorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setIntervieweeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setIntervieweeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setInterviewerArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setInterviewerArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setInventorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setInventorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setPerformerArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;)V
.end method

.method public abstract setPerformerArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;)V
.end method

.method public abstract setProducerNameArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setProducerNameArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setTranslatorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setTranslatorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setWriterArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract setWriterArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameType;)V
.end method

.method public abstract sizeOfArtistArray()I
.end method

.method public abstract sizeOfAuthorArray()I
.end method

.method public abstract sizeOfBookAuthorArray()I
.end method

.method public abstract sizeOfCompilerArray()I
.end method

.method public abstract sizeOfComposerArray()I
.end method

.method public abstract sizeOfConductorArray()I
.end method

.method public abstract sizeOfCounselArray()I
.end method

.method public abstract sizeOfDirectorArray()I
.end method

.method public abstract sizeOfEditorArray()I
.end method

.method public abstract sizeOfIntervieweeArray()I
.end method

.method public abstract sizeOfInterviewerArray()I
.end method

.method public abstract sizeOfInventorArray()I
.end method

.method public abstract sizeOfPerformerArray()I
.end method

.method public abstract sizeOfProducerNameArray()I
.end method

.method public abstract sizeOfTranslatorArray()I
.end method

.method public abstract sizeOfWriterArray()I
.end method
