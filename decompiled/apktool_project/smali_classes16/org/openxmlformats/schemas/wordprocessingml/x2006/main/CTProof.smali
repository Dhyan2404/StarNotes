.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProof;",
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

    const-string v2, "ctproof8f0etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProof;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProof;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getGrammar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof$Enum;
.end method

.method public abstract getSpelling()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof$Enum;
.end method

.method public abstract isSetGrammar()Z
.end method

.method public abstract isSetSpelling()Z
.end method

.method public abstract setGrammar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof$Enum;)V
.end method

.method public abstract setSpelling(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof$Enum;)V
.end method

.method public abstract unsetGrammar()V
.end method

.method public abstract unsetSpelling()V
.end method

.method public abstract xgetGrammar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof;
.end method

.method public abstract xgetSpelling()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof;
.end method

.method public abstract xsetGrammar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof;)V
.end method

.method public abstract xsetSpelling(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProof;)V
.end method
