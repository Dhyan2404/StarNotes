.class public Lnet/sf/saxon/regex/RegexPrecondition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fixedPosition:I

.field public minPosition:I

.field public operation:Lnet/sf/saxon/regex/Operation;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/Operation;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/RegexPrecondition;->operation:Lnet/sf/saxon/regex/Operation;

    iput p2, p0, Lnet/sf/saxon/regex/RegexPrecondition;->fixedPosition:I

    iput p3, p0, Lnet/sf/saxon/regex/RegexPrecondition;->minPosition:I

    return-void
.end method
