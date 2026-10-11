.class public Lsun/java2d/DefaultDisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# instance fields
.field private dataPointer:J

.field private disposerMethodPointer:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsun/java2d/DefaultDisposerRecord;->disposerMethodPointer:J

    iput-wide p3, p0, Lsun/java2d/DefaultDisposerRecord;->dataPointer:J

    return-void
.end method

.method public static invokeNativeDispose(JJ)V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-wide v0, p0, Lsun/java2d/DefaultDisposerRecord;->disposerMethodPointer:J

    iget-wide v2, p0, Lsun/java2d/DefaultDisposerRecord;->dataPointer:J

    invoke-static {v0, v1, v2, v3}, Lsun/java2d/DefaultDisposerRecord;->invokeNativeDispose(JJ)V

    return-void
.end method

.method public getDataPointer()J
    .locals 2

    iget-wide v0, p0, Lsun/java2d/DefaultDisposerRecord;->dataPointer:J

    return-wide v0
.end method

.method public getDisposerMethodPointer()J
    .locals 2

    iget-wide v0, p0, Lsun/java2d/DefaultDisposerRecord;->disposerMethodPointer:J

    return-wide v0
.end method
