.class public Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;
.super Lorg/apache/xerces/impl/XMLEntityManager$Entity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalEntity"
.end annotation


# instance fields
.field public paramEntityRefs:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p4, p0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->paramEntityRefs:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public final isExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isUnparsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setValues(Lorg/apache/xerces/impl/XMLEntityManager$Entity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lorg/apache/xerces/impl/XMLEntityManager$Entity;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public setValues(Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lorg/apache/xerces/impl/XMLEntityManager$Entity;)V

    iget-object p1, p1, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method
