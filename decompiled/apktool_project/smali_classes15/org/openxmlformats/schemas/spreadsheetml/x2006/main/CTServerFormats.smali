.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormats;",
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

    const-string v2, "ctserverformatsf778type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormats;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormats;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewServerFormat()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormat;
.end method

.method public abstract getCount()J
.end method

.method public abstract getServerFormatArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormat;
.end method

.method public abstract getServerFormatArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormat;
.end method

.method public abstract getServerFormatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewServerFormat(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormat;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeServerFormat(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setServerFormatArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormat;)V
.end method

.method public abstract setServerFormatArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormat;)V
.end method

.method public abstract sizeOfServerFormatArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
