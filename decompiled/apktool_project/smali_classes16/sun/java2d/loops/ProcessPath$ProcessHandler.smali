.class public abstract Lsun/java2d/loops/ProcessPath$ProcessHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/loops/ProcessPath$EndSubPathHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProcessHandler"
.end annotation


# instance fields
.field clipMode:I

.field dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/ProcessPath$DrawHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iput p2, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->clipMode:I

    return-void
.end method


# virtual methods
.method public abstract processFixedLine(IIII[IZZ)V
.end method
