package egovframework.rte;

import org.egovframe.egovcap.config.annotation.EgovCapDataSource;
import org.egovframe.egovcap.config.annotation.EgovCapDataSource.Script;
import org.springframework.context.annotation.Configuration;

/*
@Configuration
@EgovCapDataSource(serviceName="db1", scripts={
	@Script(location="classpath:/sampledb_ddl.script", 
			table="SAMPLE"),	
	@Script(location="classpath:/sampledb_data.script", 
			sql="select * from IDS limit 1")
})
*/
public class CloudContext {

}
