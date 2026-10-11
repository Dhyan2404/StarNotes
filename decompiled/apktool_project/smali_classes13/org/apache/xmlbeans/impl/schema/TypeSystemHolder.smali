.class public final Lorg/apache/xmlbeans/impl/schema/TypeSystemHolder;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
.source "SourceFile"


# static fields
.field public static final typeSystem:Lorg/apache/xmlbeans/impl/schema/TypeSystemHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/TypeSystemHolder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/TypeSystemHolder;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/impl/schema/TypeSystemHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/schema/TypeSystemHolder;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;-><init>(Ljava/lang/Class;)V

    return-void
.end method
