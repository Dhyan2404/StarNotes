.class public interface abstract Lorg/apache/xmlbeans/XmlShort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlInt;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory<",
            "Lorg/apache/xmlbeans/XmlShort;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    const-string v1, "_BI_short"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/XmlShort;->Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlShort;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getShortValue()S
.end method

.method public abstract setShortValue(S)V
.end method
