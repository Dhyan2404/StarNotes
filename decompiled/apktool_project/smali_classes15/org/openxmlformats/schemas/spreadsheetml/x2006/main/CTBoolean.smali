.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;",
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

    const-string v2, "ctboolean7c87type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewX()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getC()Ljava/lang/String;
.end method

.method public abstract getCp()J
.end method

.method public abstract getF()Z
.end method

.method public abstract getU()Z
.end method

.method public abstract getV()Z
.end method

.method public abstract getXArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getXArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewX(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract isSetC()Z
.end method

.method public abstract isSetCp()Z
.end method

.method public abstract isSetF()Z
.end method

.method public abstract isSetU()Z
.end method

.method public abstract removeX(I)V
.end method

.method public abstract setC(Ljava/lang/String;)V
.end method

.method public abstract setCp(J)V
.end method

.method public abstract setF(Z)V
.end method

.method public abstract setU(Z)V
.end method

.method public abstract setV(Z)V
.end method

.method public abstract setXArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract setXArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract sizeOfXArray()I
.end method

.method public abstract unsetC()V
.end method

.method public abstract unsetCp()V
.end method

.method public abstract unsetF()V
.end method

.method public abstract unsetU()V
.end method

.method public abstract xgetC()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCp()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetF()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetV()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetC(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCp(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetF(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetV(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
