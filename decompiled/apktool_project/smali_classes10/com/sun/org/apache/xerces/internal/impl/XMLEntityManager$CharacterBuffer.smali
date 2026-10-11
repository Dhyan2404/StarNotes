.class Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterBuffer"
.end annotation


# instance fields
.field private ch:[C

.field private isExternal:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBuffer;->isExternal:Z

    new-array p1, p2, [C

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBuffer;->ch:[C

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBuffer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBuffer;->isExternal:Z

    return p0
.end method
