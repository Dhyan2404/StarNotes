.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;",
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

    const-string v2, "ctinputcells3470type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getDeleted()Z
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getR()Ljava/lang/String;
.end method

.method public abstract getUndone()Z
.end method

.method public abstract getVal()Ljava/lang/String;
.end method

.method public abstract isSetDeleted()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetUndone()Z
.end method

.method public abstract setDeleted(Z)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setR(Ljava/lang/String;)V
.end method

.method public abstract setUndone(Z)V
.end method

.method public abstract setVal(Ljava/lang/String;)V
.end method

.method public abstract unsetDeleted()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetUndone()V
.end method

.method public abstract xgetDeleted()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetUndone()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetDeleted(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetR(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetUndone(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
