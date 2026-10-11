.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;",
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

    const-string v2, "cttblprexbasee7eetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;
.end method

.method public abstract addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;
.end method

.method public abstract addNewTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;
.end method

.method public abstract addNewTblCellSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewTblInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewTblLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;
.end method

.method public abstract addNewTblLook()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;
.end method

.method public abstract addNewTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;
.end method

.method public abstract getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;
.end method

.method public abstract getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;
.end method

.method public abstract getTblCellSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTblInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTblLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;
.end method

.method public abstract getTblLook()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;
.end method

.method public abstract getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract isSetJc()Z
.end method

.method public abstract isSetShd()Z
.end method

.method public abstract isSetTblBorders()Z
.end method

.method public abstract isSetTblCellMar()Z
.end method

.method public abstract isSetTblCellSpacing()Z
.end method

.method public abstract isSetTblInd()Z
.end method

.method public abstract isSetTblLayout()Z
.end method

.method public abstract isSetTblLook()Z
.end method

.method public abstract isSetTblW()Z
.end method

.method public abstract setJc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;)V
.end method

.method public abstract setShd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setTblBorders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;)V
.end method

.method public abstract setTblCellMar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;)V
.end method

.method public abstract setTblCellSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTblInd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTblLayout(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;)V
.end method

.method public abstract setTblLook(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;)V
.end method

.method public abstract setTblW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract unsetJc()V
.end method

.method public abstract unsetShd()V
.end method

.method public abstract unsetTblBorders()V
.end method

.method public abstract unsetTblCellMar()V
.end method

.method public abstract unsetTblCellSpacing()V
.end method

.method public abstract unsetTblInd()V
.end method

.method public abstract unsetTblLayout()V
.end method

.method public abstract unsetTblLook()V
.end method

.method public abstract unsetTblW()V
.end method
