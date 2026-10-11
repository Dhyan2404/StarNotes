.class public Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;
.super Lnet/sf/saxon/value/ObjectValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/instruct/Bindery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailureValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/value/ObjectValue<",
        "Lnet/sf/saxon/trans/XPathException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/XPathException;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method
