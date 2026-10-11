.class Lsun/font/StrikeCache$SoftDisposerRef;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lsun/font/StrikeCache$DisposableStrike;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/StrikeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftDisposerRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lsun/font/FontStrike;",
        ">;",
        "Lsun/font/StrikeCache$DisposableStrike;"
    }
.end annotation


# instance fields
.field private disposer:Lsun/font/FontStrikeDisposer;


# direct methods
.method public constructor <init>(Lsun/font/FontStrike;)V
    .locals 1

    sget-object v0, Lsun/font/StrikeCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p1, p1, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    iput-object p1, p0, Lsun/font/StrikeCache$SoftDisposerRef;->disposer:Lsun/font/FontStrikeDisposer;

    invoke-static {p0, p1}, Lsun/java2d/Disposer;->addReference(Ljava/lang/ref/Reference;Lsun/java2d/DisposerRecord;)V

    return-void
.end method


# virtual methods
.method public getDisposer()Lsun/font/FontStrikeDisposer;
    .locals 0

    iget-object p0, p0, Lsun/font/StrikeCache$SoftDisposerRef;->disposer:Lsun/font/FontStrikeDisposer;

    return-object p0
.end method
