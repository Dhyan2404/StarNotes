.class public final Lorg/apache/poi/hslf/usermodel/HSLFNotes;
.super Lorg/apache/poi/hslf/usermodel/HSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Notes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/Notes<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final _paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/Notes;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/Notes;->getNotesAtom()Lorg/apache/poi/hslf/record/NotesAtom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/NotesAtom;->getSlideID()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;-><init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->_paragraphs:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs(Lorg/apache/poi/hslf/record/PPDrawing;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->_paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->_paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->_paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "No text records found for notes sheet"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;
    .locals 2

    new-instance v0, Lorg/apache/poi/hslf/model/HeadersFooters;

    const/16 v1, 0x4f

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;S)V

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    :goto_0
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-object v0
.end method

.method public bridge synthetic getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/sl/usermodel/PlaceholderDetails;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;

    move-result-object p0

    return-object p0
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFNotes;->_paragraphs:Ljava/util/List;

    return-object p0
.end method
