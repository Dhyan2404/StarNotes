.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;",
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

    const-string v2, "cttablecellborderstyle87d0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBottom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewInsideH()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract addNewInsideV()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract addNewLeft()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract addNewRight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract addNewTl2Br()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract addNewTop()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract addNewTr2Bl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getBottom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getInsideH()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getInsideV()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getLeft()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getRight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getTl2Br()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getTop()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract getTr2Bl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;
.end method

.method public abstract isSetBottom()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetInsideH()Z
.end method

.method public abstract isSetInsideV()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetTl2Br()Z
.end method

.method public abstract isSetTop()Z
.end method

.method public abstract isSetTr2Bl()Z
.end method

.method public abstract setBottom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setInsideH(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract setInsideV(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract setLeft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract setRight(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract setTl2Br(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract setTop(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract setTr2Bl(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTThemeableLineStyle;)V
.end method

.method public abstract unsetBottom()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetInsideH()V
.end method

.method public abstract unsetInsideV()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetTl2Br()V
.end method

.method public abstract unsetTop()V
.end method

.method public abstract unsetTr2Bl()V
.end method
