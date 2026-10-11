.class public Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/TailCallLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TailCallComponent"
.end annotation


# instance fields
.field public component:Lnet/sf/saxon/expr/Component;

.field public function:Lnet/sf/saxon/expr/instruct/UserFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
