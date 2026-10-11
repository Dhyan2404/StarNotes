.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisions;",
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

    const-string v2, "ctrevisions7d97type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisions;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisions;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRaf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;
.end method

.method public abstract addNewRcc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract addNewRcft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;
.end method

.method public abstract addNewRcmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;
.end method

.method public abstract addNewRcv()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;
.end method

.method public abstract addNewRdn()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;
.end method

.method public abstract addNewRfmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract addNewRis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionInsertSheet;
.end method

.method public abstract addNewRm()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionMove;
.end method

.method public abstract addNewRqt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionQueryTableField;
.end method

.method public abstract addNewRrc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;
.end method

.method public abstract addNewRsnm()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;
.end method

.method public abstract getRafArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;
.end method

.method public abstract getRafArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;
.end method

.method public abstract getRafList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRccArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract getRccArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract getRccList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRcftArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;
.end method

.method public abstract getRcftArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;
.end method

.method public abstract getRcftList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRcmtArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;
.end method

.method public abstract getRcmtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;
.end method

.method public abstract getRcmtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRcvArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;
.end method

.method public abstract getRcvArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;
.end method

.method public abstract getRcvList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRdnArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;
.end method

.method public abstract getRdnArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;
.end method

.method public abstract getRdnList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRfmtArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract getRfmtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract getRfmtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRisArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionInsertSheet;
.end method

.method public abstract getRisArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionInsertSheet;
.end method

.method public abstract getRisList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionInsertSheet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRmArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionMove;
.end method

.method public abstract getRmArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionMove;
.end method

.method public abstract getRmList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionMove;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRqtArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionQueryTableField;
.end method

.method public abstract getRqtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionQueryTableField;
.end method

.method public abstract getRqtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionQueryTableField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRrcArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;
.end method

.method public abstract getRrcArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;
.end method

.method public abstract getRrcList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRsnmArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;
.end method

.method public abstract getRsnmArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;
.end method

.method public abstract getRsnmList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewRaf(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;
.end method

.method public abstract insertNewRcc(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract insertNewRcft(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;
.end method

.method public abstract insertNewRcmt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;
.end method

.method public abstract insertNewRcv(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;
.end method

.method public abstract insertNewRdn(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;
.end method

.method public abstract insertNewRfmt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract insertNewRis(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionInsertSheet;
.end method

.method public abstract insertNewRm(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionMove;
.end method

.method public abstract insertNewRqt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionQueryTableField;
.end method

.method public abstract insertNewRrc(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;
.end method

.method public abstract insertNewRsnm(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;
.end method

.method public abstract removeRaf(I)V
.end method

.method public abstract removeRcc(I)V
.end method

.method public abstract removeRcft(I)V
.end method

.method public abstract removeRcmt(I)V
.end method

.method public abstract removeRcv(I)V
.end method

.method public abstract removeRdn(I)V
.end method

.method public abstract removeRfmt(I)V
.end method

.method public abstract removeRis(I)V
.end method

.method public abstract removeRm(I)V
.end method

.method public abstract removeRqt(I)V
.end method

.method public abstract removeRrc(I)V
.end method

.method public abstract removeRsnm(I)V
.end method

.method public abstract setRafArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;)V
.end method

.method public abstract setRafArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;)V
.end method

.method public abstract setRccArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;)V
.end method

.method public abstract setRccArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;)V
.end method

.method public abstract setRcftArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;)V
.end method

.method public abstract setRcftArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;)V
.end method

.method public abstract setRcmtArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;)V
.end method

.method public abstract setRcmtArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;)V
.end method

.method public abstract setRcvArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;)V
.end method

.method public abstract setRcvArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;)V
.end method

.method public abstract setRdnArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;)V
.end method

.method public abstract setRdnArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;)V
.end method

.method public abstract setRfmtArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;)V
.end method

.method public abstract setRfmtArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;)V
.end method

.method public abstract setRisArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionInsertSheet;)V
.end method

.method public abstract setRisArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionInsertSheet;)V
.end method

.method public abstract setRmArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionMove;)V
.end method

.method public abstract setRmArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionMove;)V
.end method

.method public abstract setRqtArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionQueryTableField;)V
.end method

.method public abstract setRqtArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionQueryTableField;)V
.end method

.method public abstract setRrcArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;)V
.end method

.method public abstract setRrcArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;)V
.end method

.method public abstract setRsnmArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;)V
.end method

.method public abstract setRsnmArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;)V
.end method

.method public abstract sizeOfRafArray()I
.end method

.method public abstract sizeOfRccArray()I
.end method

.method public abstract sizeOfRcftArray()I
.end method

.method public abstract sizeOfRcmtArray()I
.end method

.method public abstract sizeOfRcvArray()I
.end method

.method public abstract sizeOfRdnArray()I
.end method

.method public abstract sizeOfRfmtArray()I
.end method

.method public abstract sizeOfRisArray()I
.end method

.method public abstract sizeOfRmArray()I
.end method

.method public abstract sizeOfRqtArray()I
.end method

.method public abstract sizeOfRrcArray()I
.end method

.method public abstract sizeOfRsnmArray()I
.end method
