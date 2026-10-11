.class public Lnet/sf/saxon/functions/AnalyzeStringFn$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/AnalyzeStringFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/NodeName;

.field public b:Lnet/sf/saxon/om/NodeName;

.field public c:Lnet/sf/saxon/om/NodeName;

.field public d:Lnet/sf/saxon/om/NodeName;

.field public e:Lnet/sf/saxon/om/NodeName;

.field public f:Lnet/sf/saxon/type/SchemaType;

.field public g:Lnet/sf/saxon/type/SchemaType;

.field public h:Lnet/sf/saxon/type/SchemaType;

.field public i:Lnet/sf/saxon/type/SchemaType;

.field public j:Lnet/sf/saxon/type/SimpleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->f:Lnet/sf/saxon/type/SchemaType;

    .line 3
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->g:Lnet/sf/saxon/type/SchemaType;

    .line 4
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->h:Lnet/sf/saxon/type/SchemaType;

    .line 5
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->i:Lnet/sf/saxon/type/SchemaType;

    .line 6
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->j:Lnet/sf/saxon/type/SimpleType;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/functions/AnalyzeStringFn$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/functions/AnalyzeStringFn$c;-><init>()V

    return-void
.end method
