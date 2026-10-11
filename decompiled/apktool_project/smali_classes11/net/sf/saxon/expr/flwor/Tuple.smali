.class public Lnet/sf/saxon/expr/flwor/Tuple;
.super Lnet/sf/saxon/value/ObjectValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/value/ObjectValue<",
        "[",
        "Lnet/sf/saxon/om/Sequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getMembers()[Lnet/sf/saxon/om/Sequence;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method
