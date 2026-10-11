.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;",
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

    const-string v2, "cttablestylecellstyle1fddtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract addNewFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;
.end method

.method public abstract addNewFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract addNewTcBdr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;
.end method

.method public abstract getCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;
.end method

.method public abstract getFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract getTcBdr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;
.end method

.method public abstract isSetCell3D()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetFillRef()Z
.end method

.method public abstract isSetTcBdr()Z
.end method

.method public abstract setCell3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;)V
.end method

.method public abstract setFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;)V
.end method

.method public abstract setFillRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
.end method

.method public abstract setTcBdr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;)V
.end method

.method public abstract unsetCell3D()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetFillRef()V
.end method

.method public abstract unsetTcBdr()V
.end method
