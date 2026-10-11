package org.apache.poi.hsmf.datatypes;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public class MessageSubmissionChunk extends Chunk {
    private static final Logger LOG = LogManager.getLogger((Class<?>) MessageSubmissionChunk.class);
    private static final Pattern datePatern = Pattern.compile("(\\d\\d)(\\d\\d)(\\d\\d)(\\d\\d)(\\d\\d)(\\d\\d)Z?");
    private Calendar date;
    private String rawId;

    public MessageSubmissionChunk(String str, int i, Types.MAPIType mAPIType) {
        super(str, i, mAPIType);
    }

    public Calendar getAcceptedAtTime() {
        return this.date;
    }

    public String getSubmissionId() {
        return this.rawId;
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void readValue(InputStream inputStream) throws IOException {
        int lastIndexOf;
        String str = new String(IOUtils.toByteArray(inputStream), StandardCharsets.US_ASCII);
        this.rawId = str;
        for (String str2 : str.split(AndroidTreeView.f47214k)) {
            if (str2.startsWith("l=")) {
                int lastIndexOf2 = str2.lastIndexOf(45);
                String substring = (lastIndexOf2 == -1 || (lastIndexOf = str2.lastIndexOf(45, lastIndexOf2 + (-1))) == -1 || lastIndexOf2 <= lastIndexOf) ? null : str2.substring(lastIndexOf + 1, lastIndexOf2);
                if (substring != null) {
                    Matcher matcher = datePatern.matcher(substring);
                    if (matcher.matches()) {
                        this.date = LocaleUtil.getLocaleCalendar();
                        int parseInt = Integer.parseInt(matcher.group(1));
                        this.date.set(1, parseInt + (parseInt > 80 ? 1900 : 2000));
                        this.date.set(2, Integer.parseInt(matcher.group(2)) - 1);
                        this.date.set(5, Integer.parseInt(matcher.group(3)));
                        this.date.set(11, Integer.parseInt(matcher.group(4)));
                        this.date.set(12, Integer.parseInt(matcher.group(5)));
                        this.date.set(13, Integer.parseInt(matcher.group(6)));
                        this.date.clear(14);
                    } else {
                        LOG.atWarn().log("Warning - unable to make sense of date {}", substring);
                    }
                }
            }
        }
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void writeValue(OutputStream outputStream) throws IOException {
        outputStream.write(this.rawId.getBytes(StandardCharsets.US_ASCII));
    }

    public MessageSubmissionChunk(int i, Types.MAPIType mAPIType) {
        super(i, mAPIType);
    }
}
