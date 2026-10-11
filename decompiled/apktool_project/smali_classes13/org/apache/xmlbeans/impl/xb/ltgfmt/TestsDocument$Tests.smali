.class public interface abstract Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tests"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;

    const-string v2, "tests9d6eelemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTest()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract getTestArray(I)Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract getTestArray()[Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract getTestList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTest(I)Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;
.end method

.method public abstract removeTest(I)V
.end method

.method public abstract setTestArray(ILorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;)V
.end method

.method public abstract setTestArray([Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;)V
.end method

.method public abstract sizeOfTestArray()I
.end method
