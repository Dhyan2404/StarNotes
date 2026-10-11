.class public Lorg/apache/xerces/impl/dtd/XMLElementDecl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_ANY:S = 0x0s

.field public static final TYPE_CHILDREN:S = 0x3s

.field public static final TYPE_EMPTY:S = 0x1s

.field public static final TYPE_MIXED:S = 0x2s

.field public static final TYPE_SIMPLE:S = 0x4s


# instance fields
.field public contentModelValidator:Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

.field public final name:Lorg/apache/xerces/xni/QName;

.field public scope:I

.field public final simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    iput-short v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lorg/apache/xerces/xni/QName;->clear()V

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->clear()V

    return-void
.end method

.method public setValues(Lorg/apache/xerces/xni/QName;ISLorg/apache/xerces/impl/dtd/models/ContentModelValidator;Lorg/apache/xerces/impl/dtd/XMLSimpleType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iput p2, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    iput-short p3, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    iput-object p4, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {p0, p5}, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->setValues(Lorg/apache/xerces/impl/dtd/XMLSimpleType;)V

    return-void
.end method
