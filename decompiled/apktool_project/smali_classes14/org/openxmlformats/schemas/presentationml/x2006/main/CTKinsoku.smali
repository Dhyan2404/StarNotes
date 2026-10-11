.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;",
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

    const-string v2, "ctkinsoku0179type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getInvalEndChars()Ljava/lang/String;
.end method

.method public abstract getInvalStChars()Ljava/lang/String;
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract isSetLang()Z
.end method

.method public abstract setInvalEndChars(Ljava/lang/String;)V
.end method

.method public abstract setInvalStChars(Ljava/lang/String;)V
.end method

.method public abstract setLang(Ljava/lang/String;)V
.end method

.method public abstract unsetLang()V
.end method

.method public abstract xgetInvalEndChars()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetInvalStChars()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLang()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetInvalEndChars(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetInvalStChars(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLang(Lorg/apache/xmlbeans/XmlString;)V
.end method
