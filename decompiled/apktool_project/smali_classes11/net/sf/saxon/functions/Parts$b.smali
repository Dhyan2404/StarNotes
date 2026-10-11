.class public Lnet/sf/saxon/functions/Parts$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Parts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/value/SequenceType;

.field public b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/value/AtomicValue;",
            "Lnet/sf/saxon/om/SequenceIterator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/functions/Parts$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/functions/Parts$b;-><init>()V

    return-void
.end method
