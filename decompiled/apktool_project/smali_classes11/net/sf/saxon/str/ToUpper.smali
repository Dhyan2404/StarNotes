.class public Lnet/sf/saxon/str/ToUpper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnet/sf/saxon/z/IntRangeToIntMap;

.field public static final b:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntRangeToIntMap;

    const/16 v1, 0x2ee

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntRangeToIntMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/str/ToUpper;->a:Lnet/sf/saxon/z/IntRangeToIntMap;

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/str/ToUpper;->b:Lnet/sf/saxon/z/IntHashMap;

    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lnet/sf/saxon/str/ToUpper;->c:[C

    invoke-static {}, Lnet/sf/saxon/str/ToUpper;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 16

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    sget-object v1, Lnet/sf/saxon/str/ToUpper;->c:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x7a

    const/16 v1, 0x61

    const/16 v2, -0x20

    invoke-static {v1, v0, v2}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0xb5

    const/16 v3, 0x2e7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0xdf

    const-string v3, "SS"

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0xe0

    const/16 v3, 0xf6

    invoke-static {v0, v3, v2}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0xf8

    const/16 v3, 0xfe

    invoke-static {v0, v3, v2}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0xff

    const/16 v3, 0x79

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x101

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x103

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x105

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x107

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x109

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x10b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x10d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x10f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x111

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x113

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x115

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x117

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x119

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x11b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x11d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x11f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x121

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x123

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x125

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x127

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x129

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x12b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x12d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x12f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x131

    const/16 v4, -0xe8

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x133

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x135

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x137

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x13a

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x13c

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x13e

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x140

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x142

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x144

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x146

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x148

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x149

    const-string v4, "\u02bcN"

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x14b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x14d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x14f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x151

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x153

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x155

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x157

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x159

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x15b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x15d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x15f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x161

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x163

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x165

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x167

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x169

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x16b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x16d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x16f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x171

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x173

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x175

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x177

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x17a

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x17c

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x17e

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x17f

    const/16 v4, -0x12c

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x180

    const/16 v4, 0xc3

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x183

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x185

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x188

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x18c

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x192

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x195

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x199

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x19a

    const/16 v1, 0xa3

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x19e

    const/16 v1, 0x82

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1a1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1a3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1a5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1a8

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ad

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1b0

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1b4

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1b6

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1b9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1bd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1bf

    const/16 v4, 0x38

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1c5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1c6

    const/4 v4, -0x2

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1c8

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1c9

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1cb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1cc

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ce

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1d0

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1d2

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1d4

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1d6

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1d8

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1da

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1dc

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1dd

    const/16 v5, -0x4f

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1df

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ed

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ef

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f0

    const-string v5, "J\u030c"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f2

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f3

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1fb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1fd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ff

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x201

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x203

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x205

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x207

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x209

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x20b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x20d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x20f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x211

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x213

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x215

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x217

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x219

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x21b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x21d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x21f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x223

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x225

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x227

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x229

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x22b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x22d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x22f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x231

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x233

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x23c

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x240

    const/16 v4, 0x2a3f

    const/16 v5, 0x23f

    invoke-static {v5, v0, v4}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x242

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x247

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x249

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x24b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x24d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x24f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x250

    const/16 v4, 0x2a1f

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x251

    const/16 v4, 0x2a1c

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x252

    const/16 v4, 0x2a1e

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x253

    const/16 v4, -0xd2

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x254

    const/16 v4, -0xce

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x256

    const/16 v4, 0x257

    const/16 v5, -0xcd

    invoke-static {v0, v4, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x259

    const/16 v4, -0xca

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x25b

    const/16 v4, -0xcb

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x260

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x263

    const/16 v4, -0xcf

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x265

    const v4, 0xa528

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x266

    const v4, 0xa544

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x268

    const/16 v4, -0xd1

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x269

    const/16 v4, -0xd3

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x26b

    const/16 v5, 0x29f7

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x26f

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x271

    const/16 v4, 0x29fd

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x272

    const/16 v4, -0xd5

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x275

    const/16 v4, -0xd6

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x27d

    const/16 v4, 0x29e7

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x280

    const/16 v4, -0xda

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x283

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x288

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x289

    const/16 v4, -0x45

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x28b

    const/16 v4, -0xd9

    const/16 v5, 0x28a

    invoke-static {v5, v0, v4}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x28c

    const/16 v4, -0x47

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x292

    const/16 v4, -0xdb

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x345

    const/16 v4, 0x54

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x371

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x373

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x377

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x37b

    const/16 v4, 0x37d

    invoke-static {v0, v4, v1}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x390

    const-string v1, "\u0399\u0308\u0301"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x3ac

    const/16 v4, -0x26

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3af

    const/16 v4, -0x25

    const/16 v5, 0x3ad

    invoke-static {v5, v0, v4}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x3b0

    const-string v4, "\u03a5\u0308\u0301"

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x3b1

    const/16 v5, 0x3c1

    invoke-static {v0, v5, v2}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x3c2

    const/16 v5, -0x1f

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3c3

    const/16 v5, 0x3cb

    invoke-static {v0, v5, v2}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x3cc

    const/16 v5, -0x40

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3ce

    const/16 v5, -0x3f

    const/16 v6, 0x3cd

    invoke-static {v6, v0, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x3d0

    const/16 v5, -0x3e

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3d1

    const/16 v5, -0x39

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3d5

    const/16 v5, -0x2f

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3d6

    const/16 v5, -0x36

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3d7

    const/4 v5, -0x8

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3d9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3db

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3dd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3df

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3e1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3e3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3e5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3e7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3e9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3eb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3ed

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3ef

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3f0

    const/16 v5, -0x56

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3f1

    const/16 v5, -0x50

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3f2

    const/4 v6, 0x7

    invoke-static {v0, v6}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3f5

    const/16 v7, -0x60

    invoke-static {v0, v7}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3f8

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x3fb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x430

    const/16 v7, 0x44f

    invoke-static {v0, v7, v2}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x450

    const/16 v7, 0x45f

    invoke-static {v0, v7, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x461

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x463

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x465

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x467

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x469

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x46b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x46d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x46f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x471

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x473

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x475

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x477

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x479

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x47b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x47d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x47f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x481

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x48b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x48d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x48f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x491

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x493

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x495

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x497

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x499

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x49b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x49d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x49f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4a1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4a3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4a5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4a7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4a9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4ab

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4ad

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4af

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4b1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4b3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4b5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4b7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4b9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4bb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4bd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4bf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4c2

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4c4

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4c6

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4c8

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4ca

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4cc

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4ce

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4cf

    const/16 v5, -0xf

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4d1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4d3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4d5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4d7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4d9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4db

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4dd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4df

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4e1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4e3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4e5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4e7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4e9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4eb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4ed

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4ef

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4f1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4f3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4f5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4f7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4f9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4fb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4fd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x4ff

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x501

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x503

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x505

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x507

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x509

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x50b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x50d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x50f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x511

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x513

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x515

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x517

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x519

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x51b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x51d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x51f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x521

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x523

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x525

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x527

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x561

    const/16 v5, 0x586

    const/16 v7, -0x30

    invoke-static {v0, v5, v7}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x587

    const-string v5, "\u0535\u0552"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1d79

    const v5, 0x8a04

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1d7d

    const/16 v5, 0xee6

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e01

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e03

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e05

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e07

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e09

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e0b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e0d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e0f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e11

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e13

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e15

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e17

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e19

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e1b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e1d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e1f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e21

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e23

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e25

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e27

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e29

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e2b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e2d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e2f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e31

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e33

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e35

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e37

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e39

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e3b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e3d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e3f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e41

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e43

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e45

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e47

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e49

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e4b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e4d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e4f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e51

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e53

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e55

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e57

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e59

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e5b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e5d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e5f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e61

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e63

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e65

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e67

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e69

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e6b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e6d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e6f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e71

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e73

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e75

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e77

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e79

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e7b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e7d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e7f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e81

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e83

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e85

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e87

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e89

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e8b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e8d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e8f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e91

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e93

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e95

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1e96

    const-string v5, "H\u0331"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1e97

    const-string v5, "T\u0308"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1e98

    const-string v5, "W\u030a"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1e99

    const-string v5, "Y\u030a"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1e9a

    const-string v5, "A\u02be"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1e9b

    const/16 v5, -0x3b

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ea1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ea3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ea5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ea7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ea9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eab

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ead

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eaf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eb1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eb3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eb5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eb7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eb9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ebb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ebd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ebf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ec1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ec3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ec5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ec7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ec9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ecb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ecd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ecf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ed1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ed3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ed5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ed7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ed9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1edb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1edd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1edf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ee1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ee3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ee5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ee7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ee9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eeb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eed

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eef

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ef1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ef3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ef5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ef7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1ef9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1efb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1efd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1eff

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f00

    const/16 v5, 0x1f07

    const/16 v8, 0x8

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f10

    const/16 v5, 0x1f15

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f20

    const/16 v5, 0x1f27

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f30

    const/16 v5, 0x1f37

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f40

    const/16 v5, 0x1f45

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f50

    const-string v5, "\u03a5\u0313"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f51

    invoke-static {v0, v8}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f52

    const-string v5, "\u03a5\u0313\u0300"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f53

    invoke-static {v0, v8}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f54

    const-string v5, "\u03a5\u0313\u0301"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f55

    invoke-static {v0, v8}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f56

    const-string v5, "\u03a5\u0313\u0342"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f57

    invoke-static {v0, v8}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1f60

    const/16 v5, 0x1f67

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f71

    const/16 v5, 0x4a

    const/16 v9, 0x1f70

    invoke-static {v9, v0, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f75

    const/16 v5, 0x56

    const/16 v9, 0x1f72

    invoke-static {v9, v0, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f77

    const/16 v5, 0x64

    const/16 v9, 0x1f76

    invoke-static {v9, v0, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f79

    const/16 v5, 0x80

    const/16 v9, 0x1f78

    invoke-static {v9, v0, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f7b

    const/16 v5, 0x70

    const/16 v9, 0x1f7a

    invoke-static {v9, v0, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f7d

    const/16 v5, 0x7e

    const/16 v9, 0x1f7c

    invoke-static {v9, v0, v5}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1f80

    const-string v5, "\u1f08\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f81

    const-string v9, "\u1f09\u0399"

    invoke-static {v0, v9}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f82

    const-string v10, "\u1f0a\u0399"

    invoke-static {v0, v10}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f83

    const-string v11, "\u1f0b\u0399"

    invoke-static {v0, v11}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f84

    const-string v12, "\u1f0c\u0399"

    invoke-static {v0, v12}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f85

    const-string v13, "\u1f0d\u0399"

    invoke-static {v0, v13}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f86

    const-string v14, "\u1f0e\u0399"

    invoke-static {v0, v14}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f87

    const-string v15, "\u1f0f\u0399"

    invoke-static {v0, v15}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f88

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f89

    invoke-static {v0, v9}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f8a

    invoke-static {v0, v10}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f8b

    invoke-static {v0, v11}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f8c

    invoke-static {v0, v12}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f8d

    invoke-static {v0, v13}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f8e

    invoke-static {v0, v14}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f8f

    const-string v5, "\u1f0f\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f90

    const-string v5, "\u1f28\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f91

    const-string v5, "\u1f29\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f92

    const-string v5, "\u1f2a\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f93

    const-string v5, "\u1f2b\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f94

    const-string v5, "\u1f2c\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f95

    const-string v5, "\u1f2d\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f96

    const-string v5, "\u1f2e\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f97

    const-string v5, "\u1f2f\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f98

    const-string v5, "\u1f28\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f99

    const-string v5, "\u1f29\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f9a

    const-string v5, "\u1f2a\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f9b

    const-string v5, "\u1f2b\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f9c

    const-string v5, "\u1f2c\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f9d

    const-string v5, "\u1f2d\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f9e

    const-string v5, "\u1f2e\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1f9f

    const-string v5, "\u1f2f\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa0

    const-string v5, "\u1f68\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa1

    const-string v5, "\u1f69\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa2

    const-string v5, "\u1f6a\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa3

    const-string v5, "\u1f6b\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa4

    const-string v5, "\u1f6c\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa5

    const-string v5, "\u1f6d\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa6

    const-string v5, "\u1f6e\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa7

    const-string v5, "\u1f6f\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa8

    const-string v5, "\u1f68\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fa9

    const-string v5, "\u1f69\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1faa

    const-string v5, "\u1f6a\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fab

    const-string v5, "\u1f6b\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fac

    const-string v5, "\u1f6c\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fad

    const-string v5, "\u1f6d\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fae

    const-string v5, "\u1f6e\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1faf

    const-string v5, "\u1f6f\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fb0

    const/16 v5, 0x1fb1

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1fb2

    const-string v5, "\u1fba\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fb3

    const-string v5, "\u0391\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fb4

    const-string v5, "\u0386\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fb6

    const-string v5, "\u0391\u0342"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fb7

    const-string v5, "\u0391\u0342\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fbc

    const-string v5, "\u0391\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fbe

    const/16 v5, -0x1c25

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1fc2

    const-string v5, "\u1fca\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fc3

    const-string v5, "\u0397\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fc4

    const-string v5, "\u0389\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fc6

    const-string v5, "\u0397\u0342"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fc7

    const-string v5, "\u0397\u0342\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fcc

    const-string v5, "\u0397\u0399"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fd0

    const/16 v5, 0x1fd1

    invoke-static {v0, v5, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1fd2

    const-string v5, "\u0399\u0308\u0300"

    invoke-static {v0, v5}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fd3

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fd6

    const-string v1, "\u0399\u0342"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fd7

    const-string v1, "\u0399\u0308\u0342"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fe0

    const/16 v1, 0x1fe1

    invoke-static {v0, v1, v8}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x1fe2

    const-string v1, "\u03a5\u0308\u0300"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fe3

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fe4

    const-string v1, "\u03a1\u0313"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fe5

    invoke-static {v0, v6}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x1fe6

    const-string v1, "\u03a5\u0342"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1fe7

    const-string v1, "\u03a5\u0308\u0342"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1ff2

    const-string v1, "\u1ffa\u0399"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1ff3

    const-string v1, "\u03a9\u0399"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1ff4

    const-string v1, "\u038f\u0399"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1ff6

    const-string v1, "\u03a9\u0342"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1ff7

    const-string v1, "\u03a9\u0342\u0399"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x1ffc

    const-string v1, "\u03a9\u0399"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const/16 v0, 0x214e

    const/16 v1, -0x1c

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x217f

    const/16 v1, -0x10

    const/16 v4, 0x2170

    invoke-static {v4, v0, v1}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x2184

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x24e9

    const/16 v1, -0x1a

    const/16 v4, 0x24d0

    invoke-static {v4, v0, v1}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x2c30

    const/16 v1, 0x2c5e

    invoke-static {v0, v1, v7}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x2c61

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c65

    const/16 v1, -0x2a2b

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c66

    const/16 v1, -0x2a28

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c68

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c6a

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c6c

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c73

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c76

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c81

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c83

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c85

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c87

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c89

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c8b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c8d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c8f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c91

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c93

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c95

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c97

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c99

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c9b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c9d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2c9f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ca1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ca3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ca5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ca7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ca9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cab

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cad

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2caf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cb1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cb3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cb5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cb7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cb9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cbb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cbd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cbf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cc1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cc3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cc5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cc7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cc9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ccb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ccd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ccf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cd1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cd3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cd5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cd7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cd9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cdb

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cdd

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cdf

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ce1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2ce3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cec

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cee

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2cf3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2d00

    const/16 v1, 0x2d25

    const/16 v4, -0x1c60

    invoke-static {v0, v1, v4}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const/16 v0, 0x2d27

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const/16 v0, 0x2d2d

    invoke-static {v0, v4}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa641

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa643

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa645

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa647

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa649

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa64b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa64d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa64f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa651

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa653

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa655

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa657

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa659

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa65b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa65d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa65f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa661

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa663

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa665

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa667

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa669

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa66b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa66d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa681

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa683

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa685

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa687

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa689

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa68b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa68d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa68f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa691

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa693

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa695

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa697

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa723

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa725

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa727

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa729

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa72b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa72d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa72f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa733

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa735

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa737

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa739

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa73b    # 5.9991E-41f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa73d    # 5.9994E-41f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa73f    # 5.9997E-41f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa741    # 6.0E-41f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa743    # 6.0002E-41f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa745    # 6.0005E-41f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa747    # 6.0008E-41f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa749

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa74b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa74d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa74f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa751

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa753

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa755

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa757

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa759

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa75b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa75d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa75f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa761

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa763

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa765

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa767

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa769

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa76b

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa76d

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa76f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa77a

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa77c

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa77f

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa781

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa783

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa785

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa787

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa78c

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa791

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa793

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa7a1

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa7a3

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa7a5

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa7a7

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xa7a9

    invoke-static {v0, v3}, Lnet/sf/saxon/str/ToUpper;->c(II)V

    const v0, 0xfb00

    const-string v1, "FF"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb01

    const-string v1, "FI"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb02

    const-string v1, "FL"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb03

    const-string v1, "FFI"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb04

    const-string v1, "FFL"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb05

    const-string v1, "ST"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb06

    const-string v1, "ST"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb13

    const-string v1, "\u0544\u0546"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb14

    const-string v1, "\u0544\u0535"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb15

    const-string v1, "\u0544\u053b"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb16

    const-string v1, "\u054e\u0546"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xfb17

    const-string v1, "\u0544\u053d"

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToUpper;->d(ILjava/lang/String;)V

    const v0, 0xff41

    const v1, 0xff5a

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    const v0, 0x1044f

    const/16 v1, -0x28

    const v2, 0x10428

    invoke-static {v2, v0, v1}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    return-void
.end method

.method public static b(III)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/str/ToUpper;->a:Lnet/sf/saxon/z/IntRangeToIntMap;

    invoke-virtual {v0, p0, p1, p2}, Lnet/sf/saxon/z/IntRangeToIntMap;->addEntry(III)V

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    :goto_0
    if-gt p0, p1, :cond_0

    sget-object v0, Lnet/sf/saxon/str/ToUpper;->c:[C

    add-int v1, p0, p2

    int-to-char v1, v1

    aput-char v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(II)V
    .locals 0

    invoke-static {p0, p0, p1}, Lnet/sf/saxon/str/ToUpper;->b(III)V

    return-void
.end method

.method public static d(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/str/ToUpper;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static toUpper(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->estimatedLength()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    const/16 v2, 0xdf

    if-eq v1, v2, :cond_0

    sget-object v2, Lnet/sf/saxon/str/ToUpper;->c:[C

    aget-char v1, v2, v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/sf/saxon/str/ToUpper;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/sf/saxon/str/ToUpper;->a:Lnet/sf/saxon/z/IntRangeToIntMap;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/z/IntRangeToIntMap;->get(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
