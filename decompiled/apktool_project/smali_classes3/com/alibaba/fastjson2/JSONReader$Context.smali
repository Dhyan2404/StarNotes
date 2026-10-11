.class public final Lcom/alibaba/fastjson2/JSONReader$Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

.field public f:Z

.field public features:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Ljava/time/format/DateTimeFormatter;

.field public o:Ljava/time/ZoneId;

.field public p:Ljava/util/Locale;

.field public final provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public q:Ljava/util/TimeZone;

.field public r:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field protected final symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field public t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 3
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 4
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 6
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->g:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    .line 7
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->h:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 9
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 10
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 13
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 14
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 15
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 16
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 17
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->g:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    .line 18
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->h:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 20
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 21
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 64
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 65
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 66
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 67
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 68
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 69
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 70
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 84
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 85
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 86
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 87
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 88
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 89
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 90
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->config(Lcom/alibaba/fastjson2/filter/Filter;)V

    const/4 p1, 0x0

    .line 93
    :goto_0
    array-length p2, p4

    if-ge p1, p2, :cond_1

    .line 94
    iget-wide p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v0, p4, p1

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 73
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 74
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 75
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 76
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 77
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 78
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 79
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_1

    .line 82
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object p2, p3, p1

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 96
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 97
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 98
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 99
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 100
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 101
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 102
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    new-array p2, p1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 104
    invoke-virtual {p0, p3, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 105
    :goto_0
    array-length p2, p4

    if-ge p1, p2, :cond_1

    .line 106
    iget-wide p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v0, p4, p1

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 51
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 52
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 53
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 55
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->g:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    .line 56
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->h:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 58
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 59
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 61
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 62
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v2, p2, p1

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 37
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 38
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 39
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 40
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 41
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->g:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    .line 42
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->h:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 44
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 45
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 48
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v3, p2, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 24
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    const/high16 v0, 0x80000

    .line 25
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    .line 26
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->a:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 27
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 28
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->g:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    .line 29
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->h:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 31
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->c:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    .line 32
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 35
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/alibaba/fastjson2/JSONReader$Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    :goto_0
    return-void
.end method

.method public config(Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 1

    .line 9
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_0

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 11
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v0, :cond_1

    .line 12
    check-cast p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    :cond_1
    return-void
.end method

.method public varargs config(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 4

    .line 3
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v2, p2, p1

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs config([Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 13
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 14
    aget-object v2, p1, v1

    .line 15
    instance-of v3, v2, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v3, :cond_0

    .line 16
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 17
    :cond_0
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v3, :cond_1

    .line 18
    check-cast v2, Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    array-length p1, p2

    if-ge v0, p1, :cond_3

    .line 20
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object p1, p2, v0

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getArraySupplier()Ljava/util/function/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    return p0
.end method

.method public getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    return-object p0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getDateFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->n:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->p:Ljava/util/Locale;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->n:Ljava/time/format/DateTimeFormatter;

    :cond_1
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->n:Ljava/time/format/DateTimeFormatter;

    return-object p0
.end method

.method public getExtraProcessor()Lcom/alibaba/fastjson2/filter/ExtraProcessor;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    return-object p0
.end method

.method public getFeatures()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    return-wide v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->p:Ljava/util/Locale;

    return-object p0
.end method

.method public getMaxLevel()I
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    return p0
.end method

.method public getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public getObjectSupplier()Ljava/util/function/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    return-object p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->q:Ljava/util/TimeZone;

    return-object p0
.end method

.method public getZoneId()Ljava/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    return-object p0
.end method

.method public isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget-wide p0, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFormatHasHour()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->j:Z

    return p0
.end method

.method public isFormatISO8601()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->h:Z

    return p0
.end method

.method public isFormatMillis()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->f:Z

    return p0
.end method

.method public isFormatUnixTime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->g:Z

    return p0
.end method

.method public isFormatyyyyMMdd8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->e:Z

    return p0
.end method

.method public isFormatyyyyMMddhhmmss19()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->b:Z

    return p0
.end method

.method public isFormatyyyyMMddhhmmssT19()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->c:Z

    return p0
.end method

.method public setArraySupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v2, v3

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "iso8601"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "unixtime"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v2, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "millis"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_1

    :sswitch_8
    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_a

    move v2, v4

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    const/16 v5, 0x48

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v3, :cond_c

    const/16 v5, 0x68

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v3, :cond_c

    const/16 v5, 0x4b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v3, :cond_c

    const/16 v5, 0x6b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v3, :cond_b

    goto :goto_3

    :cond_b
    move v4, v1

    :cond_c
    :goto_3
    move v6, v1

    move v3, v2

    move v5, v4

    move v2, v6

    goto :goto_6

    :pswitch_0
    move v2, v1

    move v3, v2

    move v5, v3

    goto :goto_7

    :pswitch_1
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->c:Z

    move v2, v1

    move v6, v2

    move v3, v4

    move v5, v3

    goto :goto_4

    :pswitch_2
    move v2, v1

    goto :goto_5

    :pswitch_3
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->e:Z

    move v2, v1

    move v5, v2

    move v6, v5

    move v3, v4

    goto :goto_4

    :pswitch_4
    move v2, v1

    move v3, v2

    move v5, v3

    move v6, v5

    move v1, v4

    :goto_4
    move v4, v6

    goto :goto_8

    :pswitch_5
    move v2, v4

    :goto_5
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->b:Z

    move v6, v2

    move v3, v4

    move v5, v3

    move v2, v1

    :goto_6
    move v4, v2

    goto :goto_8

    :pswitch_6
    move v3, v1

    move v5, v3

    move v6, v5

    move v2, v4

    goto :goto_4

    :pswitch_7
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->d:Z

    :cond_d
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_7
    move v6, v5

    :goto_8
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->a:Ljava/lang/String;

    if-eqz v7, :cond_e

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->n:Ljava/time/format/DateTimeFormatter;

    :cond_e
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->g:Z

    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->f:Z

    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->h:Z

    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->i:Z

    iput-boolean v5, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->j:Z

    iput-boolean v6, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->k:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45dc2bc6 -> :sswitch_8
        -0x400565ba -> :sswitch_7
        -0x14bad9d9 -> :sswitch_6
        -0x112ad7ab -> :sswitch_5
        -0x985fe00 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setDateFormatter(Ljava/time/format/DateTimeFormatter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->n:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public setExtraProcessor(Lcom/alibaba/fastjson2/filter/ExtraProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->p:Ljava/util/Locale;

    return-void
.end method

.method public setMaxLevel(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->l:I

    return-void
.end method

.method public setObjectSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->q:Ljava/util/TimeZone;

    return-void
.end method

.method public setZoneId(Ljava/time/ZoneId;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    return-void
.end method
