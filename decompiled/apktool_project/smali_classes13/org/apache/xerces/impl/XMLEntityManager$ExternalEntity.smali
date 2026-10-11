.class public Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;
.super Lorg/apache/xerces/impl/XMLEntityManager$Entity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalEntity"
.end annotation


# instance fields
.field public entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

.field public notation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p4}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    iput-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method

.method public final isExternal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isUnparsed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setValues(Lorg/apache/xerces/impl/XMLEntityManager$Entity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lorg/apache/xerces/impl/XMLEntityManager$Entity;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method

.method public setValues(Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lorg/apache/xerces/impl/XMLEntityManager$Entity;)V

    iget-object v0, p1, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    iget-object p1, p1, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    return-void
.end method
