.class public Lnet/sf/saxon/functions/ConstantFunction$False;
.super Lnet/sf/saxon/functions/ConstantFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/ConstantFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "False"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-direct {p0, v0}, Lnet/sf/saxon/functions/ConstantFunction;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method
