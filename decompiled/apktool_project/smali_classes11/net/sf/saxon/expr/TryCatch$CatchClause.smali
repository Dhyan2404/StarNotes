.class public Lnet/sf/saxon/expr/TryCatch$CatchClause;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/TryCatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchClause"
.end annotation


# instance fields
.field public catchOp:Lnet/sf/saxon/expr/Operand;

.field public nameTest:Lnet/sf/saxon/pattern/QNameTest;

.field public slotNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/TryCatch$CatchClause;->slotNumber:I

    return-void
.end method
