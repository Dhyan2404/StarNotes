.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;",
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

    const-string v2, "ctindexrangeda7atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getEnd()J
.end method

.method public abstract getSt()J
.end method

.method public abstract setEnd(J)V
.end method

.method public abstract setSt(J)V
.end method

.method public abstract xgetEnd()Lorg/openxmlformats/schemas/presentationml/x2006/main/STIndex;
.end method

.method public abstract xgetSt()Lorg/openxmlformats/schemas/presentationml/x2006/main/STIndex;
.end method

.method public abstract xsetEnd(Lorg/openxmlformats/schemas/presentationml/x2006/main/STIndex;)V
.end method

.method public abstract xsetSt(Lorg/openxmlformats/schemas/presentationml/x2006/main/STIndex;)V
.end method
